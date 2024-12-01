scoreboard players add @s score 250
tellraw @a ["",{"text":">> ","color":"gold"},{"selector":"@s"},{"text":"使用了"},{"text":"加分道具","color":"gold"},{"text":" 增加了"},{"text":"250分","color":"gold"}]
clear @s player_head[custom_data={"add_score": 250}] 1