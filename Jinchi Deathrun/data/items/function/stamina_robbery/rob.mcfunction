tag @a[tag = !items.stamina_robbery.robber,dx = 0, dy = 0, dz = 0, team = !spec] add items.stamina_robbery.robbed

scoreboard players remove @a[tag = items.stamina_robbery.robbed] stamina 50

clear @s player_head[custom_data={stamina: "robbery"}] 1

scoreboard players set @s item_cd 10

tellraw @s ["",{translate:jd.edit.function.config.5_1, color:"gold"},{translate:jd.items.function.stamina_robbery.rob.9_2},{"selector":"@a[tag = items.stamina_robbery.robbed]", color: "gold", "bold": true},{translate:jd.items.function.stamina_robbery.rob.9_3}]
tellraw @a[tag = items.stamina_robbery.robbed] ["",{translate:jd.edit.function.config.5_1, color:"gold"},{"selector":"@s", color:"gold"},{translate:jd.items.function.remove_invalid.remove.10_2},{translate:jd.showcase.function.stamina_robbery.2_2, color: "gold", "bold": true},{translate:jd.items.function.stamina_robbery.rob.10_4},{translate:jd.items.function.stamina_robbery.rob.9_3, color: "gold", "bold": true}]

execute at @s run playsound block.note_block.bell ambient @s ~ ~ ~ 10 1 1
execute as @a[tag = items.stamina_robbery.robbed] at @s run playsound block.note_block.bell ambient @s ~ ~ ~ 10 1 1

scoreboard players set @s front_distance 11
tag @a[tag = items.stamina_robbery.robbed] remove items.stamina_robbery.robbed
