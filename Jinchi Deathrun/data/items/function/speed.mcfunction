# 加速
advancement revoke @s only items:speed
execute if score @s item_cd matches 1.. run return fail
execute if predicate items:speed_2 run return run tellraw @s ["",{"text":">> ","color":"gold"},{"text": "你目前已是加速狀態","color": "red"}]

scoreboard players set @s item_cd 5
clear @s nether_star[custom_data={"speed": true}] 1
effect give @s speed 30 2 true
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"selector":"@s"},{"text":"使用了"},{"text":"加速道具","color":"gold"},{"text":" 獲得加速II"},{"text":"30秒","color":"gold"}]
