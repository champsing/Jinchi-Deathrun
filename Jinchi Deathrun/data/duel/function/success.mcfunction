# 決定對戰結果
# @s: attacker[tag=!invalid,tag=!infinity]
# at: attacker

execute if score @s grouped matches ..2 if score @s score > @n[tag=hurt] score run function duel:win
execute if score @s grouped matches ..2 if score @s score < @n[tag=hurt] score run function duel:lose
execute if score @s grouped matches ..2 if score @s score = @n[tag=hurt] score run function duel:tie


execute if score @s grouped matches 2.. if score @s team_score > @n[tag=hurt] team_score run function duel:win
execute if score @s grouped matches 2.. if score @s team_score < @n[tag=hurt] team_score run function duel:lose
execute if score @s grouped matches 2.. if score @s team_score = @n[tag=hurt] team_score run function duel:tie

tag @s add invalid
scoreboard players add @s total_duel 1
scoreboard players add @n[tag = hurt] total_duel 1
tag @a[tag=attack,limit=1] add invalid