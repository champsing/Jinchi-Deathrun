scoreboard players set @e[type = marker, tag = lobby] mode 1

tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"已進入編輯模式"}]
scoreboard objectives setdisplay sidebar editinfo
execute as @e[type = armor_stand, tag = treasure_point] run data merge entity @s {Glowing:1b,CustomNameVisible:1b}