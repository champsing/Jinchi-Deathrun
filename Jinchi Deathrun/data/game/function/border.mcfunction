execute store result score @s x run data get entity @s Pos[0]
execute store result score @s y run data get entity @s Pos[1]
execute store result score @s z run data get entity @s Pos[2]

execute if score @s x > 最大值 x run tag @s add border
execute if score @s x < 最小值 x run tag @s add border

execute if score @s y > 最大值 y run tag @s add border
execute if score @s y < 最小值 y run tag @s add border

execute if score @s z > 最大值 z run tag @s add border
execute if score @s z < 最小值 z run tag @s add border

execute if entity @s[y=-120,dy = 40] run tag @s add border

tellraw @s[tag = border] ["",{text:">> ",color:gold},{text:"請勿跨越"},{text:"地圖邊界",color:gold}]
kill @s[tag = border]
tag @s[tag = border] remove border