# 加速：兔子腳
advancement revoke @s only items:dash
execute if score @s item_cd matches 1.. run return fail
execute if predicate items:speed_2 run return run tellraw @s [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.items.function.dash.4_1,color: red}]

scoreboard players set @s item_cd 10
scoreboard players add @s total_item 1
clear @s rabbit_foot[custom_data={dash: true}] 1
effect give @s speed 30 1 true
tellraw @a [{translate: jd.empty},{translate:"jd.console",color:gold},{selector:"@s"},{translate:jd.items.function.add_100.5_1},{translate:jd.items.function.dash.10_2,color:gold},{translate:jd.items.function.dash.10_3},{translate:jd.items.function.dash.10_4,color:gold}]
