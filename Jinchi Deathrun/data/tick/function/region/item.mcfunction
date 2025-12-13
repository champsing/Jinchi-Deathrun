#---REGION：道具---
#---偵測treasure旁邊小於1格是否有玩家---
execute at @e[type = item, tag = treasure_item] as @p[team = !spec, distance = ..1] run function items:treasure/loot_treasure

#---寶箱數量---
execute store result score 現存寶箱 gamecore if entity @e[tag = treasure_item]

#---消道具冷卻，每tick減1---
execute unless score 勝負已分 gamecore matches 1 as @a[scores = {item_cd = 1..}] run scoreboard players remove @s item_cd 1

#---刪除耐久1的三叉戟
clear @a trident[damage = 1, max_damage = 2]
