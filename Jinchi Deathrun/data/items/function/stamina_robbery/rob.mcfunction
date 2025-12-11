tag @a[tag = !items.stamina_robbery.robber,dx = 0, dy = 0, dz = 0, team = !spec] add items.stamina_robbery.robbed

scoreboard players remove @a[tag = items.stamina_robbery.robbed] stamina 50

clear @s player_head[custom_data={stamina: "robbery"}] 1

tellraw @s ["",{"text":">> ","color":"gold"},{"text":"你已經成功奪取"},{"selector":"@a[tag = items.stamina_robbery.robbed]","color": "gold", "bold": true},{"text":" 50 點體力"}]
tellraw @a[tag = items.stamina_robbery.robbed] ["",{"text":">> ","color":"gold"},{"selector":"@s","color":"gold"},{"text":"對你使用了"},{"text":"體力流失","color": "gold", "bold": true},{"text":"，奪取了你"},{"text":" 50 點體力","color": "gold", "bold": true}]

execute at @s run playsound block.note_block.bell ambient @s ~ ~ ~ 10 1 1
execute as @a[tag = items.stamina_robbery.robbed] at @s run playsound block.note_block.bell ambient @s ~ ~ ~ 10 1 1

scoreboard players set @s front_distance 11
tag @a[tag = items.stamina_robbery.robbed] remove items.stamina_robbery.robbed
