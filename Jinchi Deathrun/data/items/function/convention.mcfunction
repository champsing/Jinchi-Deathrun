# 召集：不死圖騰
advancement revoke @s only items:convention
execute if score @s item_cd matches 1.. run return fail

scoreboard players set @s item_cd 10
scoreboard players add @s total_item 1
clear @s totem_of_undying[custom_data={convention: true}] 1
tag @s add items.convention
execute if entity @s[team = red] run tag @r[tag = !items.convention,team = red] add items.convention.tped
execute if entity @s[team = blue] run tag @r[tag = !items.convention,team = blue] add items.convention.tped
tp @a[tag = items.convention.tped] @s
tellraw @a [{translate: jd.empty},{translate:"jd.console",color:gold},{selector:"@s"},{translate:jd.items.function.add_100.5_1},{translate:jd.items.function.convention.12_2,color:gold},{translate:jd.items.function.convention.12_3},{selector:"@a[tag = items.convention.tped]",color:gold},{translate:jd.items.function.convention.12_4}]
tag @a[tag = items.convention.tped] remove items.convention.tped
tag @s remove items.convention
