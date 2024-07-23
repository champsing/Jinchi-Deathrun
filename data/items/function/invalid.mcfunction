# 無效狀態
advancement revoke @s only items:invalid
execute if score @s item_cd matches 1.. run return fail
scoreboard players set @s item_cd 5
execute if entity @s[tag = invalid] run return run tellraw @s ["",{"text":">> ","color":"gold"},{"text": "你目前不能使自己進入無效狀態","color": "red"}]

clear @s nether_star[custom_data={"invalid": true}] 1
tag @s add invalid
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"selector":"@s"},{"text":"使用了"},{"text":"無效狀態道具","color":"gold"}]
