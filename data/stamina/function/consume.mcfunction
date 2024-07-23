#---玩家在疾走、大跑，消耗體力、給經驗值---
execute if entity @e[type=area_effect_cloud,tag=start_mode] run scoreboard players remove @s[team=!spec] stamina 1
advancement revoke @s only stamina:consume

#---4級以前可獲得經驗。4級經驗總值: 40，第40次獲得1點就會變5級0點---
execute if entity @s[team = !spec, level = 5..] run return fail
xp add @s[team = !spec, level = ..4] 1