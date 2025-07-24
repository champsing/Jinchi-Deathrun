tag @e[type = armor_stand, tag = treasure_point, tag = generated] remove generated
execute store result score 寶箱點一半 gamecore run scoreboard players get 寶箱點數量 menu
scoreboard players operation 寶箱點一半 gamecore /= 一半 readonly
execute store result score 現存寶箱 gamecore if entity @e[tag = treasure_item]
execute store result score 生成寶箱 gamecore run scoreboard players operation 寶箱點一半 gamecore -= 現存寶箱 gamecore

execute if score 生成寶箱 gamecore matches 1.. run function items:treasure/run_summon

schedule function items:treasure/generate_treasure 30s