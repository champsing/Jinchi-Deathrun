# 因為分數為負死亡

#---保險起見---
execute if score @s score matches 0.. run return fail

#---設回0分以免連閃---
scoreboard players set @s score 0
function game:refresh_scbd
gamemode spectator @s
team join spec @s
playsound entity.generic.explode ambient @s ~ ~ ~ 10 1 1
clear @s

#-------告訴玩家他死了-------
title @s subtitle "你的分數已耗盡"
title @s title {text:"死亡",color: red,bold: true}
tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
tellraw @s ["",{text:">> ",color: gold},"你的分數已經為負數，因此你死亡了"]
