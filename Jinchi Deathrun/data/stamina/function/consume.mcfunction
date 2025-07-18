# I: 0.25 / II: 0.2 / III: 0.15 / IV: 0.1 / V: 0.05

#---玩家在疾走、大跑，消耗體力、給經驗值---
execute unless score 準備階段 gamecore matches 1 if score 操作模式 system matches 3 if predicate stamina:lose_stamina/1 run scoreboard players remove @s[team=!spec,level=0..2] stamina 1
execute unless score 準備階段 gamecore matches 1 if score 操作模式 system matches 3 if predicate stamina:lose_stamina/2 run scoreboard players remove @s[team=!spec,level=3..5] stamina 1
execute unless score 準備階段 gamecore matches 1 if score 操作模式 system matches 3 if predicate stamina:lose_stamina/3 run scoreboard players remove @s[team=!spec,level=6..7] stamina 1
execute unless score 準備階段 gamecore matches 1 if score 操作模式 system matches 3 if predicate stamina:lose_stamina/4 run scoreboard players remove @s[team=!spec,level=8..9] stamina 1
execute unless score 準備階段 gamecore matches 1 if score 操作模式 system matches 3 if predicate stamina:lose_stamina/5 run scoreboard players remove @s[team=!spec,level=10] stamina 1
execute unless score 勝負已分 gamecore matches 1 run advancement revoke @s only stamina:consume

#---10級以前可獲得經驗。10級經驗總值: 160，第160次獲得1點就會變10級0點---
execute unless score 準備階段 gamecore matches 1 if score 操作模式 system matches 3 if entity @s[team = !spec, level = 10..] run return fail
execute unless score 準備階段 gamecore matches 1 if score 操作模式 system matches 3 if predicate stamina:lose_stamina/5 run xp add @s[team = !spec, level = 0..2] 1
execute unless score 準備階段 gamecore matches 1 if score 操作模式 system matches 3 if predicate stamina:lose_stamina/4 run xp add @s[team = !spec, level = 3..5] 1
execute unless score 準備階段 gamecore matches 1 if score 操作模式 system matches 3 if predicate stamina:lose_stamina/3 run xp add @s[team = !spec, level = 6..7] 1
execute unless score 準備階段 gamecore matches 1 if score 操作模式 system matches 3 if predicate stamina:lose_stamina/2 run xp add @s[team = !spec, level = 8..9] 1