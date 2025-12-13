# 無效狀態：屏障
tellraw @a[distance = ..5] ["",{text:">> ", color: gold},{text: "道具介紹："}, {text: "無效狀態", bold: true, color: light_purple}]
tellraw @a[distance = ..5] ["",{text:">> ", color: gold},{text: "道具類型："}, {text: "利益型", bold: true, color: yellow}]
tellraw @a[distance = ..5] ["",{text:">> ", color: gold},{text: "代表物品："}, {text: "屏障", bold: true, color: dark_aqua}]
tellraw @a[distance = ..5] ["",{text:">> ", color: gold},{text: "強制自身進入無效狀態。"}]
tellraw @a[distance = ..5] ["",{text:">> ", color: gold},{text: "自身處於無效狀態時不得使用。", color: red}]
tellraw @a[distance = ..5] ""
