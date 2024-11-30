tag @e[type = armor_stand, tag = treasure_point, tag = generated] remove generated
execute store result score 生成寶箱 gamecore run scoreboard players operation 寶箱點數量 menu /= 一半 readonly

function items:treasure/run_summon

execute at @e[type = armor_stand, tag = treasure_point, tag = generated] run summon item ~ ~ ~ {Glowing:1b,NoGravity:1b,CustomNameVisible:1b,Age:-32768,PickupDelay:32767,Invulnerable:1b,Tags:["treasure_item"],CustomName:'{"bold":true,"color":"gold","text":"寶箱"}',Item:{id:"minecraft:chest",count:1}}