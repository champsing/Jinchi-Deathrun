# 解除無效狀態
advancement revoke @s only items:clear_invalid
execute if score @s item_cd matches 1.. run return fail
scoreboard players set @s item_cd 5
execute if entity @s[tag = !invalid] run return run tellraw @s ["",{"text":">> ","color":"gold"},{"text": "你目前不能解除無效狀態","color": "red"}]

clear @s[tag = invalid] nether_star[custom_data={"invalid": false}] 1
tag @s remove invalid
tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你已解除"},{"text":"無效狀態","color":"gold"}]

# tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"selector":"@s"},{"text":"使用了"},{"text":"解除無效狀態道具","color":"gold"}]
