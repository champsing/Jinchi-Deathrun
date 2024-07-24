# 加分：對戰勝利，獨得/平分加分

execute if entity @s[team=red] run tag @a[team=red,distance=..5] add add_score
execute if entity @s[team=blue] run tag @a[team=blue,distance=..5] add add_score

scoreboard players set 加分 score 50
scoreboard players set 餘數 score 50

scoreboard players operation 加分 score /= @s grouped
scoreboard players operation @a[tag=add_score] score += 加分 score
scoreboard players operation 餘數 score %= @s grouped
#---有餘數---
execute if score 餘數 score matches 1.. run function duel:score/add_remain

tag @a[tag=add_score_remain] remove add_score_remain
tag @a[tag=add_score] remove add_score