# 加分：對戰勝利，獨得/平分加分
# @s: 1. target 2. attacker
# at: @s

execute if entity @s[team = red] run tag @a[team = red, distance = ..5] add add_score
execute if entity @s[team = blue] run tag @a[team = blue, distance = ..5] add add_score

scoreboard players set 加分 score 50
scoreboard players set 餘數 score 50

#---2以上才除，void跟1不需要---
execute if score @s grouped matches 2.. run scoreboard players operation 加分 score /= @s grouped
execute if score @s grouped matches 2.. run scoreboard players operation 餘數 score %= @s grouped
execute if score @s grouped matches 2.. if score 餘數 score matches 1.. run function duel:score/add_remain

scoreboard players operation @a[tag = add_score] score += 加分 score

scoreboard players reset 加分 score
scoreboard players reset 餘數 score
tag @a[tag = add_score_remain] remove add_score_remain
tag @a[tag = add_score] remove add_score
function game:refresh_scbd