# 發光-全體：螢光石
advancement revoke @s only items:glowing_all
execute if score @s item_cd matches 1.. run return fail
execute unless entity @a[team = red, predicate=!items:glowing] run return run tellraw @s[team = blue] [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.items.function.glowing_all.4_1,color: red}]
execute unless entity @a[team = blue, predicate=!items:glowing] run return run tellraw @s[team = red] [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.items.function.glowing_all.4_1,color: red}]

scoreboard players set @s item_cd 10
scoreboard players add @s total_item 1
clear @s glowstone[custom_data={glowing: "all"}] 1
execute if entity @s[team = red] run effect give @a[team = blue, predicate=!items:glowing] glowing 15 0 true
execute if entity @s[team = blue] run effect give @a[team = red, predicate=!items:glowing] glowing 15 0 true
tellraw @a [{translate: jd.empty},{translate:"jd.console",color:gold},{selector:"@s"},{translate:jd.items.function.add_100.5_1},{translate:jd.items.function.glowing_all.12_2,color:gold},{translate:jd.items.function.glowing_all.12_3},{translate:jd.items.function.cloak.10_4,color:gold}]
