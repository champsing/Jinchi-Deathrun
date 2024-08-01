# 凍結-全體
advancement revoke @s only items:freeze_all
execute if score @s item_cd matches 1.. run return fail
execute as @a[team = red, tag = frozen] run return run tellraw @s[team = blue] ["",{"text":">> ","color":"gold"},{"text": "敵方全體已被凍結","color": "red"}]
execute as @a[team = blue, tag = frozen] run return run tellraw @s[team = red] ["",{"text":">> ","color":"gold"},{"text": "敵方全體已被凍結","color": "red"}]

clear @s blue_ice[custom_data={"freeze": "all"}] 1
scoreboard players set @s item_cd 5

execute if entity @s[team=red] as @a[team = blue] run function items:freeze/freeze
execute if entity @s[team=blue] as @a[team = red] run function items:freeze/freeze
#---排程解除凍結---
#---分開執行，免得紅隊解除了藍隊也跟著解除---
execute as @a[team = red] run schedule function items:freeze/restore_from_frozen 10s
execute as @a[team = blue] run schedule function items:freeze/restore_from_frozen 10s

tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"selector":"@s"},{"text":"使用了"},{"text":"凍結道具","color":"gold"},{"text":" 所有敵方玩家已被凍結無法移動"},{"text":"10秒","color":"gold"}]