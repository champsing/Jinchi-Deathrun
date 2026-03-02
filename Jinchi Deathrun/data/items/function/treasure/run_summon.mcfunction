execute if score 生成寶箱 gamecore matches ..0 run return fail
# debug
# say 嘗試生成寶箱...
tag @e[tag = treasure_point,sort=random,limit = 1,tag = !generated] add generated
execute at @e[type = armor_stand, tag = treasure_point, tag = generated] unless entity @e[tag = treasure_item, distance = ..3] run summon item ~ ~ ~ {Glowing: true,NoGravity: true,CustomNameVisible: true,Age:-32768,PickupDelay:32767,Invulnerable: true,Tags:["treasure_item"],CustomName:{bold:true,color:gold,translate:jd.items.function.treasure.run_summon.5_1},Item:{id:"minecraft:chest",count:1}}
scoreboard players remove 生成寶箱 gamecore 1
execute if score 生成寶箱 gamecore matches 1.. run function items:treasure/run_summon