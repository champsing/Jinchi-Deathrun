scoreboard players add @s score 50
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"selector":"@s"},{"text":"使用了"},{"text":"加分道具","color":"gold"},{"text":" 增加了"},{"text":"50分","color":"gold"}]
clear @s nether_star[custom_data={"add": 50}] 1