# 無敵陣地
advancement revoke @s only items:invulnerable_base
execute if score @s item_cd matches 1.. run return fail
scoreboard players set @s item_cd 5
execute if entity @e[tag=base,team=red,limit=1,nbt={Invulnerable:1b}] run return run tellraw @s[team=red] ["",{"text":">> ","color":"gold"},{"text": "我方陣地已是無敵狀態","color": "red"}]
execute if entity @e[tag=base,team=blue,limit=1,nbt={Invulnerable:1b}] run return run tellraw @s[team=blue] ["",{"text":">> ","color":"gold"},{"text": "我方陣地已是無敵狀態","color": "red"}]

clear @s nether_star[custom_data={"invulnerable_base": true}] 1
execute if entity @s[team=blue] run data modify entity @e[tag=base,team=blue,limit=1] Invulnerable set value 1b
execute if entity @s[team=red] run data modify entity @e[tag=base,team=red,limit=1] Invulnerable set value 1b
execute if entity @s[team=red] run scoreboard players add @e[tag=base,team=red] base 600
execute if entity @s[team=blue] run scoreboard players add @e[tag=base,team=blue] base 600
execute if entity @s[team=red] at @e[tag=base,team=red] run fill ~ ~ ~ ~ ~10 ~ bedrock
execute if entity @s[team=blue] at @e[tag=base,team=blue] run fill ~ ~ ~ ~ ~10 ~ bedrock
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"selector":"@s"},{"text":"使用了"},{"text":"無敵陣地道具","color":"gold"},{"text":" 己方陣地無法攻陣"},{"text":"20秒","color":"gold"}]
