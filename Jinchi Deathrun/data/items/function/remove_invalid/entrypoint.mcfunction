# 移除無效狀態

advancement revoke @s only items:remove_invalid
execute if score @s item_cd matches 1.. run return fail

scoreboard players set @s item_cd 5
scoreboard players add @s total_item 1
execute anchored eyes positioned ^ ^ ^1 run function items:remove_invalid/search
