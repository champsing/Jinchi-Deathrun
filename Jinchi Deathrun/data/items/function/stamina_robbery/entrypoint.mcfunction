# 體力下降：無限頭顱
advancement revoke @s only items:stamina_robbery
execute if score @s item_cd matches 1.. run return fail

scoreboard players set @s item_cd 5
scoreboard players add @s total_item 1
clear @s player_head[custom_data={stamina: "robbery"}] 1
execute anchored eyes positioned ^ ^ ^1 run function items:stamina_robbery/search
