# 體力奪取：無限頭顱
advancement revoke @s only items:stamina_robbery
execute if score @s item_cd matches 1.. run return fail

scoreboard players set @s item_cd 5
scoreboard players add @s total_item 1
clear @s player_head[custom_data={stamina: "robbery"}] 1
execute anchored eyes positioned ^ ^ ^1 run function items:stamina_robbery/search
tellraw @s ["",{text:">> ",color:gold},{text:"你已對"},{text:"體力無盡狀態",color:gold},{text:"，下次進入"},{text:"無效狀態",color:gold},{text:"前"},{text:"不會消耗體力",color:gold}]

# tellraw @a ["",{text:">> ",color:gold},{selector:"@s"},{text:"使用了"},{text:"無效狀態道具",color:gold}]
