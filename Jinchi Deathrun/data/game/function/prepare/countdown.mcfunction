# 準備階段之開始前倒數：這時遊戲還沒開始，玩家不能動

#---如果是因為大家都準備，先告知---
execute if score 已準備人數 gameinfo = 玩家人數 menu run tellraw @a ["",{text:">> ",color: gold},{text:"所有玩家已準備，"},{text:"遊戲即將開始！",color: yellow}]

#---先取消掉分數---
scoreboard players reset 準備時間 gamecore
scoreboard players reset 已準備人數 gameinfo

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
bossbar set countdown name [{text:"剩餘時間： "},{score:{name: "剩餘時間",objective: "gamecore"},color: gold},{text:"秒"}]

#---傳送---
function game:prepare/teleport

#---設定出生點---
execute as @a[team = red] at @n[tag = red_base] run spawnpoint @s ~ ~ ~
execute as @a[team = blue] at @n[tag = blue_base] run spawnpoint @s ~ ~ ~