# 緩速-單人
advancement revoke @s only items:freeze_single
execute if score @s item_cd matches 1.. run return fail
scoreboard players set @s item_cd 5
execute as @a[team = red] if predicate items:frozen run return run tellraw @s[team = blue] ["",{"text":">> ","color":"gold"},{"text": "敵方全體已被凍結","color": "red"}]
execute as @a[team = blue] if predicate items:frozen run return run tellraw @s[team = red] ["",{"text":">> ","color":"gold"},{"text": "敵方全體已被凍結","color": "red"}]

clear @s nether_star[custom_data={"freeze": "single"}] 1
execute as @a[team = red] run attribute @s generic.jump_strength modifier add answer -1 add_multiplied_base
execute as @a[team = !spec] run attribute @s generic.movement_speed modifier add answer -1 add_multiplied_base
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"selector":"@s"},{"text":"使用了"},{"text":"凍結道具","color":"gold"},{"text":" 已被凍結"},{"text":"10秒","color":"gold"}]
