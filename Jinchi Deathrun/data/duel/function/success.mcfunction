# 決定對戰結果
# @s: attacker[tag=!invalid,tag=!infinity]
# at: attacker

execute if score @s team_score > @n[tag=hurt] team_score run function duel:win
execute if score @s team_score < @n[tag=hurt] team_score run function duel:lose
execute if score @s team_score = @n[tag=hurt] team_score run function duel:tie

tag @s add invalid
tag @a[tag=attack,limit=1] add invalid