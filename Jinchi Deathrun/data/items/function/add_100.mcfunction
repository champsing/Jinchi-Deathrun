execute if entity @s[team = red] run scoreboard players add 紅隊陣地 score 100
execute if entity @s[team = blue] run scoreboard players add 藍隊陣地 score 100

tellraw @a ["",{text:">> ",color:gold},{selector:"@s"},{text:"使用了"},{text:"加分道具",color:gold},{text:" 增加了"},{text:"100分",color:gold}]
advancement revoke @s only items:add_100