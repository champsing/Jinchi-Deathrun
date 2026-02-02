# 體力全滿：100頭顱
advancement revoke @s only items:stamina_100
execute if score @s item_cd matches 1.. run return fail
execute if score @s stamina matches 100.. run return run tellraw @s [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.items.function.stamina_100.4_1,color: red}]

scoreboard players set @s item_cd 10
scoreboard players add @s total_item 1
clear @s player_head[custom_data={stamina: "100"}] 1
scoreboard players set @s stamina 100
tellraw @s [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.items.function.stamina_100.10_1},{translate:jd.items.function.stamina_100.10_2,color:gold}]
