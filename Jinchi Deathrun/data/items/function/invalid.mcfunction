# 無效狀態：屏障
advancement revoke @s only items:invalid
execute if score @s item_cd matches 1.. run return fail
execute if entity @s[tag = invalid] run return run tellraw @s ["",{text:">> ",color:gold},{text: "你目前不能使自己進入無效狀態",color: red}]

scoreboard players set @s item_cd 10
scoreboard players add @s total_item 1
clear @s barrier[custom_data={invalid: true}] 1
tag @s add invalid
scoreboard players add @s total_invalid 1
tellraw @s ["",{text:">> ",color:gold},{text:"你已進入"},{text:"無效狀態",color:gold}]

# tellraw @a ["",{text:">> ",color:gold},{selector:"@s"},{text:"使用了"},{text:"無效狀態道具",color:gold}]
