# I: 0.1 / II: 0.08 / III: 0.06 / IV: 0.04 / V: 0.02

#---玩家在疾走、大跑，消耗體力、給經驗值---
execute unless score 準備階段 gamecore matches 1 if score 操作模式 system matches 3 if predicate stamina:lose_stamina/1 run scoreboard players remove @s[team = !spec,level = 0..2] stamina 1
execute unless score 準備階段 gamecore matches 1 if score 操作模式 system matches 3 if predicate stamina:lose_stamina/2 run scoreboard players remove @s[team = !spec,level = 3..5] stamina 1
execute unless score 準備階段 gamecore matches 1 if score 操作模式 system matches 3 if predicate stamina:lose_stamina/3 run scoreboard players remove @s[team = !spec,level=6..7] stamina 1
execute unless score 準備階段 gamecore matches 1 if score 操作模式 system matches 3 if predicate stamina:lose_stamina/4 run scoreboard players remove @s[team = !spec,level=8..9] stamina 1
execute unless score 準備階段 gamecore matches 1 if score 操作模式 system matches 3 if predicate stamina:lose_stamina/5 run scoreboard players remove @s[team = !spec,level = 10] stamina 1
execute unless score 勝負已分 gamecore matches 1 run advancement revoke @s only stamina:consume

#---10級以前可獲得經驗。10級經驗總值: 160，第160次獲得1點就會變10級0點---
execute unless score 準備階段 gamecore matches 1 if score 操作模式 system matches 3 if entity @s[team = !spec, level = 10..] run return fail
execute unless score 準備階段 gamecore matches 1 if score 操作模式 system matches 3 if predicate stamina:gain_xp/1 unless predicate stamina:stamina_under_30 run xp add @s[team = !spec, level = 0..2] 1
execute unless score 準備階段 gamecore matches 1 if score 操作模式 system matches 3 if predicate stamina:gain_xp/2 unless predicate stamina:stamina_under_30 run xp add @s[team = !spec, level = 3..5] 1
execute unless score 準備階段 gamecore matches 1 if score 操作模式 system matches 3 if predicate stamina:gain_xp/3 unless predicate stamina:stamina_under_30 run xp add @s[team = !spec, level = 6..7] 1
execute unless score 準備階段 gamecore matches 1 if score 操作模式 system matches 3 if predicate stamina:gain_xp/4 unless predicate stamina:stamina_under_30 run xp add @s[team = !spec, level = 8..9] 1
