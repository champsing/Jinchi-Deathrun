# 互換：回生羅盤
# at: Server
advancement revoke @s only items:interchange
execute if score @s item_cd matches 1.. run return fail

scoreboard players set @s item_cd 5
scoreboard players add @s total_item 1
clear @s recovery_compass[custom_data={interchange: true}] 1
tag @s add item15
execute if entity @s[team = red] run tag @r[team = red,tag = !item15] add item15_target
execute if entity @s[team = blue] run tag @r[team = blue,tag = !item15] add item15_target

# at: @s
execute at @s run summon marker ~ ~ ~ {Tags:["item15_marker"]}
tp @s @p[tag = item15_target]
tp @p[tag = item15_target] @n[tag = item15_marker,type = marker]
execute at @p[tag = item15_target] run kill @n[tag = item15_marker,type = marker]

tag @s remove item15
tag @p[tag = item15_target] remove item15_target

tellraw @a ["",{text:">> ",color:gold},{selector:"@s"},{text:"使用了"},{text:"互換道具",color:gold},{text:" 與隨機一位隊友"},{text:"互換位置",color:gold}]
