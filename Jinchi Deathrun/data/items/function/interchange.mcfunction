# 互換：回生羅盤
# at: Server
advancement revoke @s only items:interchange
execute if score @s item_cd matches 1.. run return run function items:cooldown

scoreboard players set @s item_cd 5
scoreboard players add @s total_item 1
clear @s recovery_compass[custom_data={interchange: true}] 1
tag @s add items.interchange
execute if entity @s[team = red] run tag @r[team = red,tag = !items.interchange] add items.interchange.tped
execute if entity @s[team = blue] run tag @r[team = blue,tag = !items.interchange] add items.interchange.tped

# at: @s
execute at @s run summon marker ~ ~ ~ {Tags:["items.interchange_marker"]}
tp @s @p[tag = items.interchange.tped]
tp @p[tag = items.interchange.tped] @n[tag = items.interchange_marker,type = marker]
execute at @p[tag = items.interchange.tped] run kill @n[tag = items.interchange_marker,type = marker]

tag @s remove items.interchange
tag @p[tag = items.interchange.tped] remove items.interchange.tped

tellraw @a ["",{text:">> ",color:gold},{selector:"@s"},{text:"使用了"},{text:"互換道具",color:gold},{text:" 與隨機一位隊友"},{selector:"@p[tag = items.interchange.tped]"},{text:"互換位置",color:gold}]
