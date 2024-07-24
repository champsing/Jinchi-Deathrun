# 減分：對戰失敗，獨得/平分減分，不重複

execute if entity @s[team=red] run tag @a[team=red,distance=..5] add minus_score
execute if entity @s[team=blue] run tag @a[team=blue,distance=..5] add minus_score

scoreboard players set 減分 score 50
scoreboard players set 餘數 score 50

scoreboard players operation 減分 score /= @s grouped
scoreboard players operation @a[tag=minus_score] score -= 減分 score
scoreboard players operation 餘數 score %= @s grouped
execute if score 餘數 score matches 1.. run function duel:score/minus_remain

tag @a[tag=minus_score_remain] remove minus_score_remain
tag @a[tag=minus_score] remove minus_score