# 準備階段之分配綠寶石：這時遊戲還沒開始，玩家可以動

#---設定---
scoreboard players set @e[type = marker,scores={mode=2}] mode 3
tag @a add playing

execute at @n[tag = base, tag = red] run spawnpoint @a[team = red] ~ ~ ~
execute at @n[tag = base, tag = blue] run spawnpoint @a[team = blue] ~ ~ ~
team join spec @a[team=]
time set 1000
clear @a
difficulty hard
gamemode adventure @a[team=!spec]
gamemode spectator @a[team=spec]
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
scoreboard players operation 剩餘時間 gameinfo = 遊戲時間 menu
scoreboard players operation 紅隊分數 gameinfo = 初始分數 menu
scoreboard players operation 藍隊分數 gameinfo = 初始分數 menu
scoreboard players operation 初始分數綠寶石 system = 初始分數 menu
scoreboard players set @a[team = !spec] stamina 100

#---傳送---
function game:prepare/teleport

#---準備：120秒---
scoreboard players set 準備時間 system 2400
bossbar set prepare players @a
execute store result bossbar minecraft:countdown max run scoreboard players get 遊戲時間 menu

schedule function game:prepare/emerald_instruction 2s
schedule function game:prepare/give_emerald 2s