execute if score @s team_score > @a[tag=attack,limit=1] team_score run function duel:win
execute if score @s team_score < @a[tag=attack,limit=1] team_score run function duel:lose
execute if score @s team_score = @a[tag=attack,limit=1] team_score run function duel:tie

tag @s add invalid
tag @a[tag=attack,limit=1] add invalid