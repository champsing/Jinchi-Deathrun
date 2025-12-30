# 發光-全體：螢光石
advancement revoke @s only items:glowing_all
execute if score @s item_cd matches 1.. run return fail
execute unless entity @a[team = red, predicate=!items:glowing] run return run tellraw @s[team = blue] [{translate: jd.empty},{translate:"jd.console",color:gold},{text: "敵方全體已在發光",color: red}]
execute unless entity @a[team = blue, predicate=!items:glowing] run return run tellraw @s[team = red] [{translate: jd.empty},{translate:"jd.console",color:gold},{text: "敵方全體已在發光",color: red}]

scoreboard players set @s item_cd 10
scoreboard players add @s total_item 1
clear @s glowstone[custom_data={glowing: "all"}] 1
execute if entity @s[team = red] run effect give @a[team = blue, predicate=!items:glowing] glowing 15 0 true
execute if entity @s[team = blue] run effect give @a[team = red, predicate=!items:glowing] glowing 15 0 true
tellraw @a [{translate: jd.empty},{translate:"jd.console",color:gold},{selector:"@s"},{text:"使用了"},{text:"全體發光",color:gold},{text:" 所有敵方玩家發光"},{text:"15秒",color:gold}]
