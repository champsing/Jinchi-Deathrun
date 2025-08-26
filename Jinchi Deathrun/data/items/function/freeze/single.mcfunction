# 凍結-單人

# 體力奪取：無限頭顱
advancement revoke @s only items:freeze_single
execute if score @s item_cd matches 1.. run return fail

scoreboard players set @s item_cd 5
scoreboard players add @s total_item 1
execute anchored eyes positioned ^ ^ ^1 run function items:freeze_single/search
