# 解除詛咒：附魔台
tellraw @a[distance = ..5] ["",{text:">> ", color: gold},{text: "道具介紹："}, {text: "解除詛咒", bold: true, color: light_purple}]
tellraw @a[distance = ..5] ["",{text:">> ", color: gold},{text: "道具類型："}, {text: "利益型", bold: true, color: yellow}]
tellraw @a[distance = ..5] ["",{text:">> ", color: gold},{text: "代表物品："}, {text: "附魔台", bold: true, color: dark_aqua}]
tellraw @a[distance = ..5] ["",{text:">> ", color: gold},{"text": "消除所有負面狀態效果。"}]
tellraw @a[distance = ..5] ["",{text:">> ", color: gold},{"text": "自身沒有以下任一效果時不得使用：", color: red}]
tellraw @a[distance = ..5] ["",{text:">> ", color: gold},{"text": "● 凍結", color: red},"、",{"text": "● 發光", color: red},"、",{"text": "● 緩速", color: red}]
tellraw @a[distance = ..5] ""