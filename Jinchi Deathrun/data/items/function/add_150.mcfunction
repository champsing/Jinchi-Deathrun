execute if entity @s[team = red] run scoreboard players add 紅隊陣地 score 150
execute if entity @s[team = blue] run scoreboard players add 藍隊陣地 score 150
scoreboard players add @s total_contribution 150

tellraw @a [{translate: jd.empty},{translate:"jd.console",color:gold},{selector:"@s"},{text:"使用了"},{text:"加分道具",color:gold},{text:" 該隊陣地增加了"},{text:"150分",color:gold}]
advancement revoke @s only items:add_150