# 緩速-全體
advancement revoke @s only items:freeze_all
execute if score @s item_cd matches 1.. run return fail
scoreboard players set @s item_cd 5
execute as @a[team = red, tag = frozen] run return run tellraw @s[team = blue] ["",{"text":">> ","color":"gold"},{"text": "敵方全體已被凍結","color": "red"}]
execute as @a[team = blue, tag = frozen] run return run tellraw @s[team = red] ["",{"text":">> ","color":"gold"},{"text": "敵方全體已被凍結","color": "red"}]

clear @s nether_star[custom_data={"freeze": "all"}] 1

execute if entity @s[team=red] as @a[team = blue] run function items:freeze/freeze
execute if entity @s[team=blue] as @a[team = red] run function items:freeze/freeze
#---排程解除凍結---
execute as @a[team = red, tag = frozen] run schedule function items:freeze/restore_from_frozen 10s 
execute as @a[team = blue] as @a[team = red] run function items:freeze/freeze

tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"selector":"@s"},{"text":"使用了"},{"text":"凍結道具","color":"gold"},{"text":" 所有敵方玩家已被凍結"},{"text":"10秒","color":"gold"}]