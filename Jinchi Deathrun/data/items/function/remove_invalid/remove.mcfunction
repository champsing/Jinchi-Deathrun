tag @a[tag = !items.remove_invalid.remover,dx = 0, dy = 0, dz = 0, team = !spec] add items.remove_invalid.removed

execute if entity @a[tag = items.remove_invalid.removed, tag = !invalid] run return run function items:remove_invalid/not_in_invalid

scoreboard players set @s item_cd 10
clear @s shears[custom_data={"remove_invalid": true}] 1
tag @a[tag = items.remove_invalid.removed] remove invalid

tellraw @s ["",{translate:jd.edit.function.config.5_1, color:"gold"},{translate:jd.items.function.remove_invalid.remove.9_2},{"selector":"@a[tag = items.remove_invalid.removed]", color: "gold", "bold": true},{translate:jd.items.function.remove_invalid.remove.9_3}]
tellraw @a[tag = items.remove_invalid.removed] ["",{translate:jd.edit.function.config.5_1, color:"gold"},{"selector":"@s", color:"gold"},{translate:jd.items.function.remove_invalid.remove.10_2},{translate:jd.showcase.function.remove_invalid.2_2, color: "gold", "bold": true},{translate:jd.items.function.remove_invalid.remove.10_4},{translate:jd.items.function.remove_invalid.remove.10_5, color: "gold", "bold": true}]

execute at @s run playsound block.note_block.bell ambient @s ~ ~ ~ 10 1 1
execute as @a[tag = items.remove_invalid.removed] at @s run playsound block.note_block.bell ambient @s ~ ~ ~ 10 1 1

scoreboard players set @s front_distance 11
tag @a[tag = items.remove_invalid.removed] remove items.remove_invalid.removed
