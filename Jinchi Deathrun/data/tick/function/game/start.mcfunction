#---REGION：actionbar刷新---
#---正常情況---
execute as @a[team = !spec,tag = !infinity] run title @s actionbar [{text:"分數: ",bold:true,color:aqua},{score:{name:"@s",objective:score}},{text:" ． 體力: ",bold:true,color:aqua},{score:{name:"@s",objective:"stamina"},color:"#a0cc1d"}]
#---組隊時---
execute as @a[team = !spec,tag = !infinity] if score @s grouped matches 2.. run title @s actionbar [{text:"組隊分數: ",bold:true,color:aqua},{score:{name:"@s",objective:team_score}},{text:"(個人: ",bold:true,color:aqua},{score:{name:"@s",objective:score}},{text:") ． 體力: ",bold:true,color:aqua},{score:{name:"@s",objective:"stamina"},color:"#a0cc1d"}]
#---無敵時---
execute as @a[team = !spec,tag = infinity] run title @s[team = red] actionbar [{text:"分數: ",bold:true,color:aqua},{text:"無限 ",bold:true,color:"#871ea7"},{score:{name:"@s",objective:score},color:gray, bold: false, strikethrough: true},{text:" ． 陣地分數: ",bold:true,color:aqua},{score:{name:"紅隊陣地",objective:"score"},color:"#2f00ff"},{text:" ． 體力: ",bold:true,color:aqua},{score:{name:"@s",objective:"stamina"},color:"#a0cc1d"}]
execute as @a[team = !spec,tag = infinity] run title @s[team = blue] actionbar [{text:"分數: ",bold:true,color:aqua},{text:"無限 ",bold:true,color:"#871ea7"},{score:{name:"@s",objective:score},color:gray, bold: false, strikethrough: true},{text:" ． 陣地分數: ",bold:true,color:aqua},{score:{name:"藍隊陣地",objective:"score"},color:"#2f00ff"},{text:" ． 體力: ",bold:true,color:aqua},{score:{name:"@s",objective:"stamina"},color:"#a0cc1d"}]
#---無效時---
execute as @a[team = !spec,tag = invalid] run title @s actionbar [{text:"分數: ",bold:true,color:aqua},{text:"無效 ",bold:true,color:"#d1cad1"},{score:{name:"@s",objective:score},color:gray, bold: false, strikethrough: true},{text:" ． 體力: ",bold:true,color:aqua},{score:{name:"@s",objective:"stamina"},color:"#a0cc1d"}]
#---護盾時---
execute as @a[team = !spec, predicate=items:has_shield] run title @s actionbar [{text:"分數: ",bold:true,color:aqua},{text:"護盾 ",bold:true,color:"#109e76"},{score:{name:"@s",objective:score},color:aqua, bold: false},{text:" ． 體力: ",bold:true,color:aqua},{score:{name:"@s",objective:"stamina"},color:"#a0cc1d"}]
#---無效又護盾時---
execute as @a[team = !spec,tag = invalid, predicate=items:has_shield] run title @s actionbar [{text:"分數: ",bold:true,color:aqua},{text:"護盾 ",bold:true,color:"#109e76"},{text:"無效 ",bold:true,color:"#d1cad1"},{score:{name:"@s",objective:score},color:gray, bold: false, strikethrough: true},{text:" ． 體力: ",bold:true,color:aqua},{score:{name:"@s",objective:"stamina"},color:"#a0cc1d"}]

#---REGION：道具---
#---偵測treasure旁邊小於1格是否有玩家---
execute at @e[type = item, tag = treasure_item] as @p[team = !spec, distance = ..1] run function items:treasure/loot_treasure
#---寶箱數量---
execute store result score 現存寶箱 gamecore if entity @e[tag = treasure_item]
#---消道具冷卻，每tick減1---
execute unless score 勝負已分 gamecore matches 1 as @a[scores = {item_cd = 1..}] run scoreboard players remove @s item_cd 1
#---刪除耐久1的三叉戟
clear @a trident[damage = 1, max_damage = 2]

#---REGION：合體---
execute as @a[team = red] at @s store result score @s grouped if entity @a[team = red, distance = ..5,tag = !infinity]
execute as @a[team = blue] at @s store result score @s grouped if entity @a[team = blue, distance = ..5,tag = !infinity]
#---陣地(無論顏色)內不允許合體，不然1000分會被平分---
scoreboard players reset @a[tag = infinity, team = !spec] grouped
execute as @a[team = !spec,scores={grouped=1..}] at @s run function game:teaming
execute as @a[team = !spec,scores={grouped=1}] run scoreboard players operation @s team_score = @s score

#---REGION：陣地---
#---陣地作用圈---
execute as @n[tag = red_base, type = armor_stand] at @s run function base:particle/red
execute as @n[tag = blue_base, type = armor_stand] at @s run function base:particle/blue
#---玩家在陣地半徑5格球體內---
execute as @a[team = red] at @s if entity @e[tag = red_base, distance = ..5] run function base:infinity
execute as @a[team = blue] at @s if entity @e[tag = blue_base, distance = ..5] run function base:infinity
execute as @a[team = red,tag = infinity] at @s unless entity @e[tag = red_base, distance = ..5] run tag @s remove infinity
execute as @a[team = blue,tag = infinity] at @s unless entity @e[tag = blue_base, distance = ..5] run tag @s remove infinity

#---REGION：攻陣---
execute as @e[type=interaction,tag=red_base] if data entity @s attack run function base:attack/red
execute as @e[type=interaction,tag=blue_base] if data entity @s attack run function base:attack/blue

#---REGION：體力---
execute as @a[team = !spec] if predicate stamina:adrenaline run attribute @s movement_speed modifier add adrenaline 0.7 add_multiplied_total
execute as @a[team = !spec] unless predicate stamina:adrenaline run attribute @s movement_speed modifier remove adrenaline
execute as @a[team = !spec,scores = {stamina=..39}] run function stamina:effect

#---REGION：某一隊沒人---
execute unless score 勝負已分 gamecore matches 1 unless entity @a[team = blue] run function game:end/red
execute unless score 勝負已分 gamecore matches 1 unless entity @a[team = red] run function game:end/blue
