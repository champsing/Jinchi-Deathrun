# 準備階段之分配綠寶石：這時遊戲還沒開始，玩家可以動

#---設定---
scoreboard players set 操作模式 system 3
tag @a add playing

execute at @n[tag = red_base] run spawnpoint @a[team = red] ~ ~ ~
execute at @n[tag = blue_base] run spawnpoint @a[team = blue] ~ ~ ~
team join spec @a[team = ]
time set 1000
clear @a
difficulty hard
gamemode adventure @a[team = !spec]
gamemode spectator @a[team = spec]
recipe take @a *
xp set @a 0 levels
xp set @a 0 points
effect give @a invisibility 9 0 true
execute as @a at @s run playsound block.ender_chest.open ambient @s ~ ~ ~
title @s times 10 40 10
title @a title ["",{text:"陣地",bold:true,color:gold},{text:"大逃殺",bold:true,color:red}]
title @a subtitle ["",{text:"遊戲開始",bold:true,color:"green"}]

scoreboard players operation 最大值 x > a_pt x
scoreboard players operation 最大值 y > a_pt y
scoreboard players operation 最大值 z > a_pt z
scoreboard players operation 最大值 x > b_pt x
scoreboard players operation 最大值 y > b_pt y
scoreboard players operation 最大值 z > b_pt z

#---防呆---
execute as @e[tag = edit_amst] run data merge entity @s {Marker: 1b, Glowing: 0b,CustomNameVisible: 0b}

#---記分板---
scoreboard objectives setdisplay sidebar gameinfo
scoreboard objectives setdisplay below_name total_duel
scoreboard players reset @a
scoreboard players set 準備階段 gamecore 1
scoreboard players operation 剩餘時間 gameinfo = 遊戲時間 menu
scoreboard players operation 初始分數 gameinfo = 初始分數 menu
scoreboard players operation 目標分數 gameinfo = 目標分數 menu
scoreboard players operation 初始分數綠寶石 gamecore = 初始分數 menu
scoreboard players operation 寶箱點一半 gamecore = 寶箱點數量 menu
scoreboard players operation 寶箱點一半 gamecore /= 一半 readonly
scoreboard players set @a[team = !spec] stamina 100

#---傳送---
function game:prepare/teleport

#---準備：120秒---
scoreboard players set 準備時間 gamecore 120
bossbar set prepare players @a
execute store result bossbar minecraft:countdown max run scoreboard players get 遊戲時間 menu
execute store result bossbar minecraft:prepare max run scoreboard players get 準備時間 gamecore

tellraw @a ["",{text:">> ",color:gold},{text:"準備階段：分配分數",bold: true}]
tellraw @a ["",{text:">> ",color:gold},{text:"各組現已收到與初始分數等值的綠寶石，隨機分配在每位玩家身上，每顆代表10分。"}]
tellraw @a ["",{text:">> ",color:gold},{text:"時間有2分鐘，請分配每個人的分數。"}]
tellraw @a ["",{text:">> ",color:gold},{text:"分數不需平分，也可以不分給某一人。"}]
function game:prepare/give_emerald

schedule function game:prepare/time 1s