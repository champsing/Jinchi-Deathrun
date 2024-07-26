# 減分：對戰失敗，獨得/平分減分，不重複
# @s: 1. target 2. attacker
# at: @s

execute if entity @s[team=red] run tag @a[team=red,distance=..5] add minus_score
execute if entity @s[team=blue] run tag @a[team=blue,distance=..5] add minus_score

scoreboard players set 減分 score 50
scoreboard players set 餘數 score 50

#---2以上才除，0跟1不需要---
execute if score @s grouped matches 2.. run scoreboard players operation 減分 score /= @s grouped
execute if score @s grouped matches 2.. run scoreboard players operation 餘數 score %= @s grouped
execute if score @s grouped matches 2.. if score 餘數 score matches 1.. run function duel:score/minus_remain

scoreboard players operation @a[tag=minus_score] score -= 減分 score

tag @a[tag=minus_score_remain] remove minus_score_remain
tag @a[tag=minus_score] remove minus_score