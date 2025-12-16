#全體凍結：藍冰
tellraw @a[distance = ..5] ["",{text:">> ", color: gold},{text: "道具介紹："}, {text: "全體凍結", bold: true, color: light_purple}]
tellraw @a[distance = ..5] ["",{text:">> ", color: gold},{text: "道具類型："}, {text: "全體型", bold: true, color: yellow}]
tellraw @a[distance = ..5] ["",{text:">> ", color: gold},{text: "代表物品："}, {text: "藍冰", bold: true, color: dark_aqua}]
tellraw @a[distance = ..5] ["",{text:">> ", color: gold},{text: "所有敵隊玩家無法移動 10 秒。"}]
tellraw @a[distance = ..5] ["",{text:">> ", color: gold},{text: "敵隊玩家均已被凍結時不得使用。", color: red}]
tellraw @a[distance = ..5] ""
