# 加分餘數：選隨機一個人加餘數，不重複

tag @r[tag = add_score,tag = !add_score_remain] add add_score_remain_pick
tag @a[tag = add_score_remain_pick] add add_score_remain

scoreboard players add @a[tag = add_score_remain] score 1
scoreboard players remove 餘數 score 1
tag @a[tag = add_score_remain_pick] remove add_score_remain_pick
execute if score 餘數 score matches 1.. run function duel:score/add_remain