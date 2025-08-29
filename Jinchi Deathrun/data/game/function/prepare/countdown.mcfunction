# 準備階段之開始前倒數：這時遊戲還沒開始，玩家不能動
#---先取消掉分數---
scoreboard players reset 準備時間 gamecore

#---取消排程---
schedule clear game:prepare/countdown

#---效果---
effect give @a invisibility 9 0 true
execute as @a run attribute @s jump_strength modifier add countdown -1 add_multiplied_base
execute as @a run attribute @s movement_speed modifier add countdown -1 add_multiplied_base

#---設定---
scoreboard players set 倒數 gamecore 5
schedule function game:count 1s
schedule function game:start 6s
gamemode adventure @a[team = !spec]
gamemode spectator @a[team = spec]
bossbar set prepare players
bossbar set countdown players @a
bossbar set countdown name [{text:"剩餘時間： "},{score:{name: "剩餘時間",objective: "gameinfo"},color: gold},{text:"秒"}]

#---傳送---
function game:prepare/teleport

#---設定出生點---
execute as @a[team = red] at @n[tag = red_base] run spawnpoint @s ~ ~ ~
execute as @a[team = blue] at @n[tag = blue_base] run spawnpoint @s ~ ~ ~

#---分數---
execute as @a[team = !spec] run clear @s emerald