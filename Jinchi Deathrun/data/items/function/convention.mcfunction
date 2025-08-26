# 召集：不死圖騰
advancement revoke @s only items:convention
execute if score @s item_cd matches 1.. run return fail

scoreboard players set @s item_cd 5
scoreboard players add @s total_item 1
clear @s totem_of_undying[custom_data={convention: true}] 1
tag @s add items.convention
execute if entity @s[team = red] run tag @r[tag = !items.convention,team = red] add items.convention.tped
execute if entity @s[team = blue] run tag @r[tag = !items.convention,team = blue] add items.convention.tped
tp @a[tag = items.convention.tped] @s
tellraw @a ["",{text:">> ",color:gold},{selector:"@s"},{text:"使用了"},{text:"召集道具",color:gold},{text:" 隨機把一名隊友"},{selector:"@a[tag = items.convention.tped]",color:gold},{text:"傳送過來"}]
tag @a[tag = items.convention.tped] remove items.convention.tped
tag @s remove items.convention
