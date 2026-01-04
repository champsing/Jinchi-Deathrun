tag @e[type = armor_stand, tag = treasure_point, tag = generated] remove generated
scoreboard players operation 生成寶箱 gamecore = 玩家人數一半 gamecore
scoreboard players operation 生成寶箱 gamecore -= 現存寶箱 gamecore
execute if score 生成寶箱 gamecore matches 1.. run function items:treasure/run_summon

schedule function items:treasure/generate_treasure 30s