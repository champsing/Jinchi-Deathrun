# 電擊
# @s: 1. target 2. attacker
# at: Server
playsound entity.zombie_villager.converted ambient @s
function duel:shock/effect
tellraw @s ["",{text:">> ",color:gold},{text:"你因在"},{text:"無效狀態",color:gold},{text:"中試圖決鬥或攻陣而遭受"},{text:"電擊",color:gold},{text:"，無法移動和跳躍 "},{text:" 10 秒",color:gold}]