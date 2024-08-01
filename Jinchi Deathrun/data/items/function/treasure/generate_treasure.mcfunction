tag @e[type = armor_stand, tag = treasure_point, tag = generated] remove generated
scoreboard players operation 生成寶箱 system = 寶箱數量 menu

function items:treasure/run_summon
execute at @n[tag = center] run function items:treasure/generate_point_treasure

execute at @e[type = armor_stand, tag = treasure_point, tag = generated] run summon item ~ ~ ~ {Glowing:1b,NoGravity:1b,CustomNameVisible:1b,Age:-32768,PickupDelay:32767,Invulnerable:1b,Tags:["treasure_item"],CustomName:'{"bold":true,"color":"gold","text":"寶箱"}',Item:{id:"minecraft:chest",count:1}}