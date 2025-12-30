#單人凍結：冰磚
tellraw @a[distance = ..5] [{translate: jd.empty},{translate:"jd.console", color: gold},{text: "道具介紹："}, {text: "單人凍結", bold: true, color: light_purple}]
tellraw @a[distance = ..5] [{translate: jd.empty},{translate:"jd.console", color: gold},{text: "道具類型："}, {text: "瞄準型", bold: true, color: "#6bc9e6"}]
tellraw @a[distance = ..5] [{translate: jd.empty},{translate:"jd.console", color: gold},{text: "代表物品："}, {text: "冰磚", bold: true, color: dark_aqua}]
tellraw @a[distance = ..5] [{translate: jd.empty},{translate:"jd.console", color: gold},{text: "使用後"},{text: "目標玩家", color: gold, bold: true},{text: "立即無法移動 10 秒。"}]
tellraw @a[distance = ..5] [{translate: jd.empty},{translate:"jd.console", color: gold},{text: "該玩家已被凍結、敵隊玩家均已被凍結時不得使用。", color: red}]
tellraw @a[distance = ..5] [{translate: jd.empty},{translate:"jd.console", color: gold},{text: "目標玩家：準星瞄準的面前 10 格內最近的玩家。", color: gray, italic: true}]
tellraw @a[distance = ..5] ""
