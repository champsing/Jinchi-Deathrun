# 移除無效狀態：剪刀
tellraw @a[distance = ..5] [{translate: jd.empty},{translate:"jd.console", color: gold},{text: "道具介紹："}, {text: "移除無效狀態", bold: true, color: light_purple}]
tellraw @a[distance = ..5] [{translate: jd.empty},{translate:"jd.console", color: gold},{text: "道具類型："}, {text: "瞄準型", bold: true, color: "#6bc9e6"}]
tellraw @a[distance = ..5] [{translate: jd.empty},{translate:"jd.console", color: gold},{text: "代表物品："}, {text: "剪刀", bold: true, color: dark_aqua}]
tellraw @a[distance = ..5] [{translate: jd.empty},{translate:"jd.console", color: gold},{text: "使用後"},{text: "目標玩家", color: gold, bold: true},{text: "立即解除無效狀態。"}]
tellraw @a[distance = ..5] [{translate: jd.empty},{translate:"jd.console", color: gold},{text: "目標玩家非處於無效狀態時不得使用。", color: red}]
tellraw @a[distance = ..5] [{translate: jd.empty},{translate:"jd.console", color: gold},{text: "目標玩家：準星瞄準的面前 10 格內最近的玩家。", color: gray, italic: true}]
tellraw @a[distance = ..5] ""
