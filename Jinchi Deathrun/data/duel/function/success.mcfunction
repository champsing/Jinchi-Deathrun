# 決定對戰結果
# @s: attacker[tag = !invalid,tag = !infinity]
# at: attacker

execute if score @s team_score > @n[tag = attack] team_score run function duel:win
execute if score @s team_score < @n[tag = attack] team_score run function duel:lose

function duel:invalid
execute as @n[tag = attack] run function duel:invalid