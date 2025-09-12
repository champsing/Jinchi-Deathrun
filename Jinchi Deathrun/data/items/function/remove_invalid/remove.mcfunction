tag @a[tag = !items.remove_invalid.remover,dx = 0, dy = 0, dz = 0, team = !spec] add items.remove_invalid.removed

execute if entity @a[tag = items.remove_invalid.removed, tag = !invalid] run return run function items:remove_invalid/not_in_invalid

clear @s shears[custom_data={"remove_invalid": true}] 1
tag @a[tag = items.remove_invalid.removed] remove invalid

tellraw @s ["",{"text":">> ","color":"gold"},{"text":"你已經成功移除"},{"selector":"@a[tag = items.remove_invalid.removed]","color": "gold", "bold": true},{"text":"的無效狀態"}]
tellraw @a[tag = items.remove_invalid.removed] ["",{"text":">> ","color":"gold"},{"selector":"@s","color":"gold"},{"text":"對你使用了"},{"text":"移除無效狀態","color": "gold", "bold": true},{"text":"，使你的"},{"text":"無效狀態解除","color": "gold", "bold": true}]

execute at @s run playsound block.note_block.bell ambient @s ~ ~ ~ 10 1 1
execute as @a[tag = items.remove_invalid.removed] at @s run playsound block.note_block.bell ambient @s ~ ~ ~ 10 1 1

scoreboard players set @s front_distance 11
tag @a[tag = items.remove_invalid.removed] remove items.remove_invalid.removed
