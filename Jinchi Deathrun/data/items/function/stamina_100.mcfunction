# 體力全滿：100頭顱
advancement revoke @s only items:stamina_100
execute if score @s item_cd matches 1.. run return fail
execute if score @s stamina matches 100.. run return run tellraw @s ["",{text:">> ",color:gold},{text: "你的體力目前已滿",color: red}]

scoreboard players set @s item_cd 5
scoreboard players add @s total_item 1
clear @s player_head[custom_data={stamina: "100"}] 1
scoreboard players set @s stamina 100
tellraw @s ["",{text:">> ",color:gold},{text:"你已恢復"},{text:"全部體力",color:gold}]
