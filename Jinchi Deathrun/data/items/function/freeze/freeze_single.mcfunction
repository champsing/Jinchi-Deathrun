# 緩速-單人
advancement revoke @s only items:freeze_single
execute if score @s item_cd matches 1.. run return fail
scoreboard players set @s item_cd 5

#---面前玩家已被凍結--
execute as @a[team = red, tag = frozen] if predicate items:frozen run return run tellraw @s[team = blue] ["",{"text":">> ","color":"gold"},{"text": "該玩家已被凍結","color": "red"}]
execute as @a[team = blue, tag = frozen] if predicate items:frozen run return run tellraw @s[team = red] ["",{"text":">> ","color":"gold"},{"text": "該玩家已被凍結","color": "red"}]

clear @s nether_star[custom_data={"freeze": "single"}] 1
# Not done yet
# execute as @a[team = !spec] run attribute @s generic.jump_strength modifier add answer -1 add_multiplied_base
# execute as @a[team = !spec] run attribute @s generic.movement_speed modifier add answer -1 add_multiplied_base

execute at @s run tellraw @n[type = player, tag = frozen] ["",{"text":">> ","bold":true,"color":"gold"},{"selector":"@s"},{"text":"使用了"},{"text":"凍結道具","color":"gold"},{"selector":""},{"text":" 已被凍結"},{"text":"10秒","color":"gold"}]
execute at @s run tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"selector":"@s"},{"text":"使用了"},{"text":"凍結道具","color":"gold"},{"selector":"@n[tag = frozen, predicate = items:frozen]"},{"text":" 已被凍結"},{"text":"10秒","color":"gold"}]
