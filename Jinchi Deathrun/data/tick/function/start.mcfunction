#---這時候任何人都不該操作設定、開始遊戲和進入編輯模式---
advancement revoke @a from settings:root
advancement revoke @a only edit:edit

#---開始---
execute as @a[team=!spec] at @s if score 倒數 gamecore matches 0..5 run function game:prepare/teleport
execute as @a[tag = !playing] run function start:spectate
execute as @a[team=spec] at @s if entity @s[y=-120,dy=40] run tp @s @n[tag=center]
execute as @a if score @s score matches ..0 run function game:score_death
execute as @a[scores={death=1}] at @s run function game:death
execute if score 勝負已分 gamecore matches 0 as @a[team=!spec] at @s run function game:border
execute as @a[scores={join=1..}] run function game:join
effect give @a saturation infinite 0 true

#---個人分數actionbar---
execute unless score 準備階段 gamecore matches 1 as @a[team=!spec,tag=!infinity] run title @s actionbar [{text:"分數: ",bold:true,color:aqua},{score:{name:"@s",objective:score}},{text:" ． 體力: ",bold:true,color:aqua},{score:{name:"@s",objective:"stamina"},color:"#a0cc1d"}]

execute unless score 準備階段 gamecore matches 1 as @a[team=!spec,tag=!infinity] if score @s grouped matches 2.. run title @s actionbar [{text:"分數: ",bold:true,color:aqua},{score:{name:"@s",objective:team_score}},{text:"(",bold:true,color:aqua},{score:{name:"@s",objective:score}},{text:") ． 體力: ",bold:true,color:aqua},{score:{name:"@s",objective:"stamina"},color:"#a0cc1d"}]

execute unless score 準備階段 gamecore matches 1 as @a[team=!spec,tag=infinity] run title @s actionbar [{text:"分數: ",bold:true,color:aqua},{text:"無限 ",bold:true,color:"#871ea7"},{score:{name:"@s",objective:score},color:gray, bold: false, strikethrough: true},{text:" ． 體力: ",bold:true,color:aqua},{score:{name:"@s",objective:"stamina"},color:"#a0cc1d"}]

#-------偵測treasure旁邊小於1格是否有玩家-------
execute at @e[type = item, tag = treasure_item] as @p[team = !spec, distance = ..1] run function items:treasure/loot_treasure

#---道具---
#---刪除耐久1的三叉戟
clear @a trident[damage=1, max_damage=2]

#---排程解除凍結---
execute as @a[tag = frozen] if score @s frozen matches 0 run function items:freeze/restore_from_frozen

#---合體---
execute as @a[team=red] at @s store result score @s nearby if entity @a[team=red,distance=..5,tag=!infinity]
execute as @a[team=blue] at @s store result score @s nearby if entity @a[team=blue,distance=..5,tag=!infinity]
#---陣地(無論顏色)內不允許合體，不然1000分會被平分---
scoreboard players reset @a[tag=infinity,team=!spec] nearby
execute as @a[team=!spec] at @s unless score @s nearby = @s grouped run function game:teaming

#---陣地---
#---陣地最遠距離與本體的歐幾里得距離為3根號2，大概是4.23，取整數5---
#---在陣地半徑5格球體內具有無敵，解除無效狀態---
execute as @a[team=red] at @s if entity @e[tag=red,tag=base,distance=..5] run function base:infinity
execute as @a[team=blue] at @s if entity @e[tag=blue,tag=base,distance=..5] run function base:infinity
execute as @a[team=red,tag=infinity] at @s unless entity @e[tag=red,tag=base,distance=..5] run tag @s remove infinity
execute as @a[team=blue,tag=infinity] at @s unless entity @e[tag=blue,tag=base,distance=..5] run tag @s remove infinity

#---體力---
execute unless score 準備階段 gamecore matches 1 as @a[team=!spec] if predicate stamina:adrenaline run effect give @s speed 1 0 true
execute unless score 準備階段 gamecore matches 1 as @a[team=!spec,scores={stamina=..39}] run function stamina:effect

#---任務---
# execute if score 任務倒數 gamecore matches 1.. run function event:tick