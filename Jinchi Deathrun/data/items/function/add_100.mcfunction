execute if entity @s[team = red] run scoreboard players add 紅隊陣地 score 100
execute if entity @s[team = blue] run scoreboard players add 藍隊陣地 score 100
scoreboard players add @s total_contribution 100

tellraw @a [{translate: jd.empty},{translate:"jd.console",color:gold},{selector:"@s"},{translate:jd.items.function.add_100.5_1},{translate:jd.items.function.add_100.5_2,color:gold},{translate:jd.items.function.add_100.5_3},{translate:jd.items.function.add_100.5_4,color:gold}]
advancement revoke @s only items:add_100