# 體力稍滿：20頭顱
advancement revoke @s only items:stamina_20
execute if score @s item_cd matches 1.. run return fail
execute if score @s stamina matches 100.. run return run tellraw @s [{translate: jd.empty},{translate:"jd.console",color:gold},{text: "你的體力目前已滿",color: red}]

scoreboard players set @s item_cd 10
scoreboard players add @s total_item 1
clear @s player_head[custom_data={stamina: "20"}] 1
scoreboard players add @s stamina 20
tellraw @s [{translate: jd.empty},{translate:"jd.console",color:gold},{text:"你已恢復"},{text:"20點體力",color:gold}]
