execute as @a[tag=!join] run function start:join
execute as @a[scores = {death = 1}] run function start:death
execute store result score 寶箱點 editinfo if entity @e[tag = treasure_point]
# execute as @e[type = armor_stand, tag = treasure_point, tag = !edited] at @s run function edit:modify
# execute as @e[type = armor_stand, tag = treasure_point, tag = edited] at @s run function edit:edited