import os
import re
import json

# 配置：請根據你的資料包名稱修改命名空間
NAMESPACE = "jd"
TARGET_LANG_FILE = "zh_tw.json"  # 輸出的語言檔名

# 匹配 text:"..." 的正規表達式
TEXT_PATTERN = re.compile(r'text\s*:\s*"([^"]+)"')


def generate_key(file_path, index):
    """根據路徑生成翻譯鍵"""
    # 取得相對路徑並移除副檔名
    rel_path = os.path.rel_content_path = os.path.relpath(file_path, start=os.getcwd())
    path_parts = os.path.splitext(rel_path)[0].replace(os.sep, ".").split(".")

    # 原始邏輯：<namespace>.<上級資料夾>.<檔名>
    # 移除'Jinchi Deathrun', 'data' 等常見資料夾路徑以簡化鍵名
    key_name = f"{NAMESPACE}.{'.'.join(path_parts).replace('Jinchi Deathrun.', '').replace('data.', '')}.{index}"
    return key_name


def process_mcfunctions():
    # 1. 讀取現有的翻譯檔
    lang_data = {}
    if os.path.exists(TARGET_LANG_FILE):
        try:
            with open(TARGET_LANG_FILE, "r", encoding="utf-8") as f:
                lang_data = json.load(f)
            print(
                f"成功載入現有的 {TARGET_LANG_FILE}，已包含 {len(lang_data)} 條詞條。"
            )
        except Exception as e:
            print(f"讀取 JSON 失敗，將建立新檔案。錯誤：{e}")

    # 建立反向索引（文本 -> 鍵），用來檢查重複文本
    text_to_key = {v: k for k, v in lang_data.items()}

    # 2. 遍歷目錄處理 .mcfunction
    for root, dirs, files in os.walk(os.getcwd()):
        for file in files:
            if file.endswith(".mcfunction"):
                file_path = os.path.join(root, file)

                with open(file_path, "r", encoding="utf-8") as f:
                    lines = f.readlines()

                new_lines = []
                changed = False

                for line_idx, line in enumerate(lines):
                    # 這裡使用 finditer 處理單行中可能多個 text:""
                    matches = list(TEXT_PATTERN.finditer(line))
                    if not matches:
                        new_lines.append(line)
                        continue

                    # 由後往前替換，避免字串索引偏移
                    for i, match in enumerate(reversed(matches), 1):
                        original_text = match.group(1)

                        # 檢查：如果此文本已存在於語言檔，直接使用舊鍵
                        if original_text in text_to_key:
                            t_key = text_to_key[original_text]
                        else:
                            # 否則生成新鍵，並存入索引中防止後續重複
                            t_key = generate_key(
                                file_path, f"{line_idx+1}_{len(matches)-i+1}"
                            )
                            text_to_key[original_text] = t_key
                            lang_data[t_key] = original_text  # 更新要輸出的字典

                        replacement = f"translate:{t_key}"
                        start, end = match.span()
                        line = line[:start] + replacement + line[end:]
                        changed = True
                    new_lines.append(line)

                # 3. 如果檔案有變動，寫回 .mcfunction
                if changed:
                    with open(file_path, "w", encoding="utf-8") as f:
                        f.writelines(new_lines)
                    print(f"已更新檔案: {file_path}")

    # 4. 將更新後的詞條寫回 JSON (按鍵名排序，方便維護)
    with open(TARGET_LANG_FILE, "w", encoding="utf-8") as f:
        json.dump(dict(sorted(lang_data.items())), f, ensure_ascii=False, indent=4)

    print(f"\n處理完成！已更新 {TARGET_LANG_FILE}")


if __name__ == "__main__":
    process_mcfunctions()
