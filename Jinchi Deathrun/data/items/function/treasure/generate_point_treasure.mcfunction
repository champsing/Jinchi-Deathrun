summon item ~ ~ ~ {Item:{id:"minecraft:player_head"},Tags:["50_point","point_item"]}
summon item ~ ~ ~ {Item:{id:"minecraft:player_head"},Tags:["100_point","point_item"]}
summon item ~ ~ ~ {Item:{id:"minecraft:player_head"},Tags:["150_point","point_item"]}
summon item ~ ~ ~ {Item:{id:"minecraft:player_head"},Tags:["200_point","point_item"]}
summon item ~ ~ ~ {Item:{id:"minecraft:player_head"},Tags:["250_point","point_item"]}
summon item ~ ~ ~ {Item:{id:"minecraft:player_head"},Tags:["300_point","point_item"]}

function items:treasure/point_treasure_macro {point: 50}
function items:treasure/point_treasure_macro {point: 100}
function items:treasure/point_treasure_macro {point: 150}
function items:treasure/point_treasure_macro {point: 200}
function items:treasure/point_treasure_macro {point: 250}
function items:treasure/point_treasure_macro {point: 300}

execute as @e[tag = point_item] run tp @s @e[type = armor_stand, tag = treasure_point, sort = random, limit = 1]

# 以寶箱點的視角，當自己三格球體內有2個point_item的時候，tp隨機其中一個去自己10格外最近的寶箱點
execute as @e[type = armor_stand, tag = treasure_point] if entity @e[tag = point_item, distance = ..3, limit = 2] run tp @e[tag = point_item, distance = ..3, sort = random, limit = 1] @n[type = armor_stand, tag = treasure_point, distance = 10..]

kill @n[type = item, nbt={Item:{id:"minecraft:chest",count:1}}]