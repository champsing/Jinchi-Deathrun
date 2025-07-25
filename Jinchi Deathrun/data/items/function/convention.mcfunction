# 召集：不死圖騰
advancement revoke @s only items:convention
execute if score @s item_cd matches 1.. run return fail

scoreboard players set @s item_cd 5
scoreboard players add @s total_item 1
clear @s totem_of_undying[custom_data={"convention": true}] 1
tag @s add item14
execute if entity @s[team=red] run tp @s[tag=!item14,team=red] @s
execute if entity @s[team=blue] run tp @s[tag=!item14,team=blue] @s
tag @s remove item14
tellraw @a ["",{text:">> ",color:gold},{selector:"@s"},{text:"使用了"},{text:"召集道具",color:gold},{text:" 隨機把"},{text:"一名隊友",color:gold},{text:"傳送過來"}]
