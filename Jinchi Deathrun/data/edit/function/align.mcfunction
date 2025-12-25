# 陣地隨時看向中央點
execute as @n[type = armor_stand, tag = red_base, tag = edit_amst] at @s run tp @s ~ ~ ~ facing entity @n[tag = center]
execute as @n[type = armor_stand, tag = blue_base, tag = edit_amst] at @s run tp @s ~ ~ ~ facing entity @n[tag = center]
