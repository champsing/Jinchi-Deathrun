# 減分餘數：選隨機一個人減餘數

tag @r[tag=minus_score,tag=!minus_score_remain] add minus_score_remain_pick
tag @a[tag=minus_score_remain_pick] add minus_score_remain

scoreboard players remove @a[tag=minus_score_remain_pick] score 1
scoreboard players remove 餘數 score 1
tag @a[tag=minus_score_remain_pick] remove minus_score_remain_pick
execute if score 餘數 score matches 1.. run function duel:score/minus_remain