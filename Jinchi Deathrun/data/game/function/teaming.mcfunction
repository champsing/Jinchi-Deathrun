execute if entity @s[team = red] as @a[team = red, distance = ..5,tag = !infinity, tag = !invalid] run tag @s add my_team
execute if entity @s[team = blue] as @a[team = blue, distance = ..5,tag = !infinity, tag = !invalid] run tag @s add my_team
scoreboard players reset @s team_score
scoreboard players operation @s team_score += @a[tag = my_team] score
execute if score @s grouped matches 2.. run function game:teaming_grouped
tag @a[tag = my_team] remove my_team