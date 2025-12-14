# 發光-單人：螢石粉
advancement revoke @s only items:glowing_all
execute if score @s item_cd matches 1.. run return fail
execute unless entity @a[team = red, predicate=!items:glowing] run return run tellraw @s[team = blue] ["",{text:">> ",color:gold},{text: "敵方全體已在發光",color: red}]
execute unless entity @a[team = blue, predicate=!items:glowing] run return run tellraw @s[team = red] ["",{text:">> ",color:gold},{text: "敵方全體已在發光",color: red}]

scoreboard players set @s item_cd 10
scoreboard players add @s total_item 1
clear @s glowstone_dust[custom_data={glowing: "single"}] 1
advancement revoke @s only items:glowing_single
execute if entity @s[team = red] run effect give @r[team = blue, predicate=!items:glowing] glowing 15 0 true
execute if entity @s[team = blue] run effect give @r[team = red, predicate=!items:glowing] glowing 15 0 true
tellraw @a ["",{text:">> ",color:gold},{selector:"@s"},{text:"使用了"},{text:"單人發光",color:gold},{text:" 隨機一位敵方玩家發光"},{text:"15秒",color:gold}]
