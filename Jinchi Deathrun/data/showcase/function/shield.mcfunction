# 護盾：盾牌
tellraw @a[distance = ..5] ["",{text:">> ", color: gold},{text: "道具介紹："}, {text: "護盾", bold: true, color: light_purple}]
tellraw @a[distance = ..5] ["",{text:">> ", color: gold},{text: "道具類型："}, {text: "利益型", bold: true, color: yellow}]
tellraw @a[distance = ..5] ["",{text:">> ", color: gold},{text: "代表物品："}, {text: "盾牌", bold: true, color: dark_aqua}]
tellraw @a[distance = ..5] ["",{text:">> ", color: gold},{text: "自身無法被發起對戰 10 秒。"}]
tellraw @a[distance = ..5] ["",{text:">> ", color: gold},{"text": "護盾效果期間仍可攻陣、發起對戰、進入/解除無效狀態等。","color": "light_purple","italic": true}]
tellraw @a[distance = ..5] ["",{text:">> ", color: gold},{text: "自身擁有護盾狀態時不得使用。", color: red}]
tellraw @a[distance = ..5] ""
