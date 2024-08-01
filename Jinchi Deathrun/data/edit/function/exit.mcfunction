tp @s @e[limit = 1, type = marker, tag = lobby]
scoreboard objectives setdisplay sidebar menu
clear @a

execute as @e[type = armor_stand, tag = treasure_point] run data merge entity @s {Glowing:0b,CustomNameVisible:0b}
scoreboard players set @e[type = marker, tag = lobby] mode 2