execute if score 生成寶箱 gamecore matches ..0 run return fail
tag @e[tag = treasure_point,sort=random,limit = 1,tag = !generated] add generated
execute at @e[type = armor_stand, tag = treasure_point, tag = generated] run summon item ~ ~ ~ {Glowing:1b,NoGravity:1b,CustomNameVisible:1b,Age:-32768,PickupDelay:32767,Invulnerable:1b,Tags:["treasure_item"],CustomName:{bold:true,color:gold,text:"寶箱"},Item:{id:"minecraft:chest",count:1}}
scoreboard players remove 生成寶箱 gamecore 1
execute if score 生成寶箱 gamecore matches 1.. run function items:treasure/run_summon