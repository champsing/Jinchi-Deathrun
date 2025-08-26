title @s title {text: "誤擊無敵陣地", bold: true, color: gray}
title @s subtitle {text: "敵方陣地無敵中！", bold: true}
effect give @s darkness 10 0 true
effect give @s slowness 10 2 true
tellraw @s ["",{text:">> ",color:gold},{text:"你因"},{text:"攻擊無敵狀態的敵方陣地",color:red},{text:"而遭受"},{text:"電擊",color:gold},{text:"，獲得負面效果黑暗I和緩速III"},{text:" 10 秒",color:gold}]