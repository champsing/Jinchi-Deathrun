tag @p[tag=!items.freeze_single.user, dx = 0, dy = 0, dz = 0, team = !spec] add items.freeze_single.target

execute if entity @a[tag = item.freeze_single.target, tag = frozen] run return run function items:freeze_single/already_frozen

clear @s packed_ice[custom_data={freeze: "single"}] 1
scoreboard players set @s item_cd 10
execute as @a[tag = items.freeze_single.target] run function items:freeze/freeze
tellraw @a [{translate: jd.empty},{translate:"jd.console", color: gold},{selector: "@s"},{translate:jd.items.function.add_100.5_1},{translate:jd.items.function.freeze_single.freeze.8_2, color: gold},{translate:jd.items.function.freeze_single.freeze.8_3},{selector: "@a[tag = items.freeze_single.target]"},{translate:jd.items.function.freeze_single.freeze.8_4},{translate:jd.items.function.freeze.freeze.7_1, color: gold},{translate:jd.items.function.freeze_single.freeze.8_6}]
scoreboard players set @s front_distance 11
tag @a[tag = items.freeze_single.target] remove items.freeze_single.target