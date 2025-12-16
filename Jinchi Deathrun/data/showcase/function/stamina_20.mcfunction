# 體力稍滿：20頭顱
tellraw @a[distance = ..5] ["",{text:">> ", color: gold},{text: "道具介紹："}, {text: "體力稍滿", bold: true, color: light_purple}]
tellraw @a[distance = ..5] ["",{text:">> ", color: gold},{text: "道具類型："}, {text: "自身型", bold: true, color: yellow}]
tellraw @a[distance = ..5] ["",{text:">> ", color: gold},{text: "代表物品："}, {text: "20 頭顱", bold: true, color: dark_aqua}]
tellraw @a[distance = ..5] ["",{text:">> ", color: gold},{text: "立即恢復體力 20 點。"}]
tellraw @a[distance = ..5] ["",{text:">> ", color: gold},{text: "自身體力值滿時不得使用。", color: red}]
tellraw @a[distance = ..5] ""
