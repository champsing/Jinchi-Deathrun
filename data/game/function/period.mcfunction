scoreboard players add 時段 system 1
execute if score 時段 system matches 1 run scoreboard objectives modify gameinfo displayname {"text":"第一天下午","bold":true,"color":"gold"}
execute if score 時段 system matches 2 run scoreboard objectives modify gameinfo displayname {"text":"第一天晚上","bold":true,"color":"gold"}
execute if score 時段 system matches 3 run scoreboard objectives modify gameinfo displayname {"text":"第一天凌晨","bold":true,"color":"gold"}
execute if score 時段 system matches 4 run scoreboard objectives modify gameinfo displayname {"text":"第二天早上","bold":true,"color":"gold"}
execute if score 時段 system matches 5 run scoreboard objectives modify gameinfo displayname {"text":"第二天下午","bold":true,"color":"gold"}
execute if score 時段 system matches 6 run scoreboard objectives modify gameinfo displayname {"text":"第二天晚上","bold":true,"color":"gold"}
execute if score 時段 system matches 7 run scoreboard objectives modify gameinfo displayname {"text":"第二天凌晨","bold":true,"color":"gold"}
execute if score 時段 system matches 8 run scoreboard objectives modify gameinfo displayname {"text":"第三天早上","bold":true,"color":"gold"}
execute if score 時段 system matches 9 run scoreboard objectives modify gameinfo displayname {"text":"第三天下午","bold":true,"color":"gold"}
execute if score 時段 system matches 10 run scoreboard objectives modify gameinfo displayname {"text":"第三天晚上","bold":true,"color":"gold"}
execute if score 時段 system matches 11 run scoreboard objectives modify gameinfo displayname {"text":"第三天凌晨","bold":true,"color":"gold"}

execute as @a at @s run playsound block.anvil.place voice @s ~ ~ ~ 1 2

execute if score soul setting matches 0 run function game:soul

schedule function game:period 300s