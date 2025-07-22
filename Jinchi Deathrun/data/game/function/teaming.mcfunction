#---如果nearby是void，第一句就會return fail---
scoreboard players operation @s grouped = @s nearby
#---如果grouped只有1人或更少，return fail---
execute if score @s grouped matches ..1 run return fail

scoreboard players reset @s team_score
execute if entity @s[team=red] as @a[team=red,distance=..5] run scoreboard players operation @s team_score += @s score
execute if entity @s[team=blue] as @a[team=blue,distance=..5] run scoreboard players operation @s team_score += @s score
function game:refresh_scbd