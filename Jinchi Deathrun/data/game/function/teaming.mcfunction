scoreboard players operation @s grouped = @s nearby
execute if score @s grouped matches 0 run return fail

scoreboard players reset @s team_score
execute if entity @s[team=red] as @a[team=red,distance=..5] run scoreboard players operation @s team_score += @s score
execute if entity @s[team=blue] as @a[team=blue,distance=..5] run scoreboard players operation @s team_score += @s score