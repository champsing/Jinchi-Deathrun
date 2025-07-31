scoreboard players operation @s grouped = @s nearby

scoreboard players reset @s team_score
execute if entity @s[team=red] as @a[team=red,distance=..5,tag=!infinity] run tag @s add my_team
execute if entity @s[team=blue] as @a[team=blue,distance=..5,tag=!infinity] run tag @s add my_team
scoreboard players operation @s team_score += @a[tag=my_team] score
tag @a[tag=my_team] remove my_team
function game:refresh_scbd