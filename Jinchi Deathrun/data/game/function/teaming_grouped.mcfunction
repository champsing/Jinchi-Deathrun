execute if score @s grouped matches 2 store result storage game:teaming_grouped team_score float 1.02 run scoreboard players get @s team_score
execute if score @s grouped matches 3 store result storage game:teaming_grouped team_score float 1.03 run scoreboard players get @s team_score
execute if score @s grouped matches 4 store result storage game:teaming_grouped team_score float 1.04 run scoreboard players get @s team_score
execute if score @s grouped matches 5 store result storage game:teaming_grouped team_score float 1.05 run scoreboard players get @s team_score
execute if score @s grouped matches 6 store result storage game:teaming_grouped team_score float 1.06 run scoreboard players get @s team_score
execute if score @s grouped matches 7 store result storage game:teaming_grouped team_score float 1.07 run scoreboard players get @s team_score
execute if score @s grouped matches 8 store result storage game:teaming_grouped team_score float 1.08 run scoreboard players get @s team_score
execute if score @s grouped matches 9 store result storage game:teaming_grouped team_score float 1.09 run scoreboard players get @s team_score

execute store result score @s team_score run data get storage game:teaming_grouped team_score 1.0
