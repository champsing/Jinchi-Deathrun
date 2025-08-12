advancement revoke @s only base:friendly_fire

title @s title {text: "誤擊己方陣地", bold: true, color: gray}
title @s subtitle {text: "請勿攻擊己方陣地！", bold: true}
effect give @s darkness 10 0 true
effect give @s slowness 10 2 true
tellraw @s ["",{text:">> ",color:gold},{text:"你因"},{text:"誤擊己方陣地",color:red},{text:"而遭受"},{text:"電擊",color:gold},{text:"，獲得負面效果黑暗I和緩速III "},{text:"10秒",color:gold}]
