# 準備階段之分配綠寶石：這時遊戲還沒開始，玩家可以動

#---設定---
tag @e[type=marker,tag=lobby] add start
tag @a add start

setblock ~ ~ ~ air
team join spec @a[team=]
time set 1000
clear @a
difficulty hard
gamemode adventure @a
recipe take @a *
experience add @a -99999999 levels
effect give @a invisibility 9 0 true
execute as @a at @s run playsound block.ender_chest.open ambient @s ~ ~ ~
title @s times 10 40 10
title @a title ["",{"text":"陣地","bold":true,"color":"gold"},{"text":"大逃殺","bold":true,"color":"red"}]
title @a subtitle ["",{"text":"遊戲開始","bold":true,"color":"green"}]

#---記分板---
scoreboard objectives setdisplay sidebar gameinfo
scoreboard objectives setdisplay below_name total_duel
scoreboard players reset @a
scoreboard players operation 剩餘時間 gameinfo = 遊戲時間 system
scoreboard players set 藍隊分數 gameinfo 1000
scoreboard players set 紅隊分數 gameinfo 1000
scoreboard players operation 初始分數綠寶石 system = 初始分數 menu


#---執行macro用aec---
# UUID 47cc9d0c-b481-4f45-9776-8c941f618d53
# https://www.soltoder.com/mc-uuid-converter/#1204591884,-1266593979,-1753838444,526486867
summon minecraft:area_effect_cloud ~ ~ ~ {UUID:[I;1204591884,-1266593979,-1753838444,526486867],Duration:80,Age:0}
execute store result entity 47cc9d0c-b481-4f45-9776-8c941f618d53 DurationOnUse int 1.0 run scoreboard players operation 初始分數綠寶石 system /= 十倍 system

#---傳送---
function game:prepare/teleport

#---準備---
scoreboard players set 準備時間 system 2400
bossbar set prepare players @a
scoreboard players operation 初始分數 system = 初始分數 menu
function game:prepare/emerald_macro with entity 47cc9d0c-b481-4f45-9776-8c941f618d53 Score 
schedule function game:prepare/tell_emerald 5s