#---設定---
tag @e[type=area_effect_cloud,tag=lobby] add start
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
scoreboard players set 遊戲時間 gameinfo 0
scoreboard players set 藍隊分數 gameinfo 1000
scoreboard players set 紅隊分數 gameinfo 1000

#---傳送---

#---準備---
scoreboard players set 準備時間 system 2400
bossbar set prepare players @a
scoreboard players operation 初始分數 system = 初始分數 menu
function game:emerald