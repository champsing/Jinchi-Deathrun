#---REGION：陣地---
#---陣地作用圈---
execute as @n[tag = red_base, type = armor_stand] at @s run function base:particle/red
execute as @n[tag = blue_base, type = armor_stand] at @s run function base:particle/blue

#---玩家在陣地半徑5格球體內---
execute as @a[team = red] at @s if entity @e[tag = red_base, distance = ..5] run function base:infinity
execute as @a[team = blue] at @s if entity @e[tag = blue_base, distance = ..5] run function base:infinity
execute as @a[team = red,tag = infinity] at @s unless entity @e[tag = red_base, distance = ..5] run tag @s remove infinity
execute as @a[team = blue,tag = infinity] at @s unless entity @e[tag = blue_base, distance = ..5] run tag @s remove infinity

#---攻陣---
execute as @e[type=interaction,tag=red_base] if data entity @s attack run function base:attack/red
execute as @e[type=interaction,tag=blue_base] if data entity @s attack run function base:attack/blue
