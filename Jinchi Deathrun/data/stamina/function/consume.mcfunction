#---玩家在疾走、大跑，消耗體力、給經驗值---
execute if entity @e[type=marker,scores={mode=3}] run scoreboard players remove @s[team=!spec] stamina 1
advancement revoke @s only stamina:consume

#---10級以前可獲得經驗。10級經驗總值: 160，第160次獲得1點就會變10級0點---
execute if entity @e[type=marker,scores={mode=3}] if entity @s[team = !spec, level = 10..] run return fail
execute if entity @e[type=marker,scores={mode=3}] run xp add @s[team = !spec, level = ..9] 1