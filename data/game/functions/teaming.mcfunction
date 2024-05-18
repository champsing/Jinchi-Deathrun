scoreboard players reset 小團隊分 team_score
execute if entity @s[team=red] as @a[team=red,distance=..5] run scoreboard players operation 小團隊分 team_score += @s score
execute if entity @s[team=blue] as @a[team=blue,distance=..5] run scoreboard players operation 小團隊分 team_score += @s score
scoreboard players operation @s team_score = 小團隊分 team_score
scoreboard players operation @s teammate2 = @s teammate