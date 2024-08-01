tag @e[tag=treasure_point,sort=random,limit=1,tag=!generated] add generated
scoreboard players remove 生成寶箱 system 1
execute if score 生成寶箱 system matches 1.. run function items:treasure/run_summon