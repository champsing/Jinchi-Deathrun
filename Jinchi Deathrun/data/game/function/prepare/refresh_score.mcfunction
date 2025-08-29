scoreboard players reset @a[team = !spec] score
execute as @a[team = !spec] store result score @s score run clear @s emerald 0
scoreboard players operation @a[team = !spec] score *= 十倍 readonly