scoreboard players add @s score 200
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"selector":"@s"},{"text":"使用了"},{"text":"加分道具","color":"gold"},{"text":" 增加了"},{"text":"200分","color":"gold"}]
clear @s nether_star[custom_data={"add_score": 200}] 1