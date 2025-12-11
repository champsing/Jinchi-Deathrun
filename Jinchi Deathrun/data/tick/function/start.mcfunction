#---這時候任何人都不該操作設定、開始遊戲和進入編輯模式---
advancement revoke @a from settings:root
advancement revoke @a only edit:edit

#---常駐運行---
execute as @a[team = !spec] at @s if score 倒數 gamecore matches 0..5 run function game:prepare/teleport
execute as @a[tag = !playing] run function start:spectate
execute as @a[team = spec] at @s if entity @s[y = -120,dy = 40] run tp @s @n[tag = center]
execute as @a[scores = {death = 1}] at @s run function game:death
execute unless score 勝負已分 gamecore matches 1 as @a[team = !spec] at @s run function game:border
execute as @a[scores = {join = 1..}] run function game:join
effect give @a saturation infinite 0 true
execute as @a[team = !spec] run function game:emerald
function game:refresh_scbd

#---攻陣---
execute as @e[type=interaction,tag=red_base] if data entity @s attack run function base:attack/red
execute as @e[type=interaction,tag=blue_base] if data entity @s attack run function base:attack/blue

#---個人分數actionbar---
#---準備階段預告---
execute if score 準備階段 gamecore matches 1 as @a[team = !spec] run title @s actionbar [{text:"進場時個人分數: ",bold:true,color:aqua},{score:{name:"@s",objective:score}}]

#---正常情況---
execute unless score 準備階段 gamecore matches 1 as @a[team = !spec,tag = !infinity] run title @s actionbar [{text:"分數: ",bold:true,color:aqua},{score:{name:"@s",objective:score}},{text:" ． 體力: ",bold:true,color:aqua},{score:{name:"@s",objective:"stamina"},color:"#a0cc1d"}]

#---組隊時---
execute unless score 準備階段 gamecore matches 1 as @a[team = !spec,tag = !infinity] if score @s grouped matches 2.. run title @s actionbar [{text:"組隊分數: ",bold:true,color:aqua},{score:{name:"@s",objective:team_score}},{text:"(個人: ",bold:true,color:aqua},{score:{name:"@s",objective:score}},{text:") ． 體力: ",bold:true,color:aqua},{score:{name:"@s",objective:"stamina"},color:"#a0cc1d"}]

#---無敵時---
execute unless score 準備階段 gamecore matches 1 as @a[team = !spec,tag = infinity] run title @s[team = red] actionbar [{text:"分數: ",bold:true,color:aqua},{text:"無限 ",bold:true,color:"#871ea7"},{score:{name:"@s",objective:score},color:gray, bold: false, strikethrough: true},{text:" ． 陣地分數: ",bold:true,color:aqua},{score:{name:"紅隊陣地",objective:"score"},color:"#2f00ff"},{text:" ． 體力: ",bold:true,color:aqua},{score:{name:"@s",objective:"stamina"},color:"#a0cc1d"}]
execute unless score 準備階段 gamecore matches 1 as @a[team = !spec,tag = infinity] run title @s[team = blue] actionbar [{text:"分數: ",bold:true,color:aqua},{text:"無限 ",bold:true,color:"#871ea7"},{score:{name:"@s",objective:score},color:gray, bold: false, strikethrough: true},{text:" ． 陣地分數: ",bold:true,color:aqua},{score:{name:"藍隊陣地",objective:"score"},color:"#2f00ff"},{text:" ． 體力: ",bold:true,color:aqua},{score:{name:"@s",objective:"stamina"},color:"#a0cc1d"}]

#---無效時---
execute unless score 準備階段 gamecore matches 1 as @a[team = !spec,tag = invalid] run title @s actionbar [{text:"分數: ",bold:true,color:aqua},{text:"無效 ",bold:true,color:"#d1cad1"},{score:{name:"@s",objective:score},color:gray, bold: false, strikethrough: true},{text:" ． 體力: ",bold:true,color:aqua},{score:{name:"@s",objective:"stamina"},color:"#a0cc1d"}]

#---護盾時---
execute unless score 準備階段 gamecore matches 1 as @a[team = !spec, predicate=items:has_shield] run title @s actionbar [{text:"分數: ",bold:true,color:aqua},{text:"護盾 ",bold:true,color:"#109e76"},{score:{name:"@s",objective:score},color:aqua, bold: false},{text:" ． 體力: ",bold:true,color:aqua},{score:{name:"@s",objective:"stamina"},color:"#a0cc1d"}]

#---無效又護盾時---
execute unless score 準備階段 gamecore matches 1 as @a[team = !spec,tag = invalid, predicate=items:has_shield] run title @s actionbar [{text:"分數: ",bold:true,color:aqua},{text:"護盾 ",bold:true,color:"#109e76"},{text:"無效 ",bold:true,color:"#d1cad1"},{score:{name:"@s",objective:score},color:gray, bold: false, strikethrough: true},{text:" ． 體力: ",bold:true,color:aqua},{score:{name:"@s",objective:"stamina"},color:"#a0cc1d"}]

#-------偵測treasure旁邊小於1格是否有玩家-------
execute at @e[type = item, tag = treasure_item] as @p[team = !spec, distance = ..1] run function items:treasure/loot_treasure

#---道具---
#---寶箱數量---
execute store result score 現存寶箱 gamecore if entity @e[tag = treasure_item]
#---刪除耐久1的三叉戟
clear @a trident[damage = 1, max_damage = 2]

#---合體---
execute as @a[team = red] at @s store result score @s nearby if entity @a[team = red, distance = ..5,tag = !infinity]
execute as @a[team = blue] at @s store result score @s nearby if entity @a[team = blue, distance = ..5,tag = !infinity]
#---陣地(無論顏色)內不允許合體，不然1000分會被平分---
scoreboard players reset @a[tag = infinity, team = !spec] nearby
execute as @a[team = !spec] at @s unless score @s nearby = @s grouped run function game:teaming
execute as @a[team = !spec,scores={nearby=1,grouped=1}] run scoreboard players operation @s team_score = @s score

#---陣地---
#---在陣地半徑5格球體內具有無敵，解除無效狀態---
execute unless score 準備階段 gamecore matches 1 as @n[tag = red_base, type = armor_stand] at @s run function base:particle/red
execute unless score 準備階段 gamecore matches 1 as @n[tag = blue_base, type = armor_stand] at @s run function base:particle/blue

execute as @a[team = red] at @s if entity @e[tag = red_base, distance = ..5] run function base:infinity
execute as @a[team = blue] at @s if entity @e[tag = blue_base, distance = ..5] run function base:infinity
execute as @a[team = red,tag = infinity] at @s unless entity @e[tag = red_base, distance = ..5] run tag @s remove infinity
execute as @a[team = blue,tag = infinity] at @s unless entity @e[tag = blue_base, distance = ..5] run tag @s remove infinity

#---體力---
execute unless score 準備階段 gamecore matches 1 as @a[team = !spec] if predicate stamina:adrenaline run attribute @s movement_speed modifier add adrenaline 0.7 add_multiplied_total
execute unless score 準備階段 gamecore matches 1 as @a[team = !spec] unless predicate stamina:adrenaline run attribute @s movement_speed modifier remove adrenaline
execute unless score 準備階段 gamecore matches 1 as @a[team = !spec,scores = {stamina=..39}] run function stamina:effect

#---某一隊沒人---
execute unless score 勝負已分 gamecore matches 1 unless entity @a[team = blue] run function game:end/red
execute unless score 勝負已分 gamecore matches 1 unless entity @a[team = red] run function game:end/blue

#---任務---
# execute if score 任務倒數 gamecore matches 1.. run function event:tick