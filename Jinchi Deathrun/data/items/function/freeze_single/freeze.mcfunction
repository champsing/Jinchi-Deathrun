tag @p[tag=!items.freeze_single.user, dx = 0, dy = 0, dz = 0, team = !spec] add items.freeze_single.target

execute if entity @a[tag = item.freeze_single.target, tag = frozen] run return run function items:freeze_single/already_frozen

clear @s packed_ice[custom_data={freeze: "single"}] 1
scoreboard players set @s item_cd 10
execute as @a[tag = items.freeze_single.target] run function items:freeze/freeze
tellraw @a [{text:">> ", color: gold},{selector: "@s"},{text: "使用了"},{text: "凍結-單人", color: gold},{text: "，"},{selector: "@a[tag = items.freeze_single.target]"},{text: "已被"},{text:"凍結", color: gold},{text: "，無法移動"}]
scoreboard players set @s front_distance 11
tag @a[tag = items.freeze_single.target] remove items.freeze_single.target