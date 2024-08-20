# 準備階段之開始前倒數：這時遊戲還沒開始，玩家不能動

#---效果---
effect give @a invisibility 9 0 true

#---設定---
scoreboard players set 倒數 system 5
schedule function game:count 1s
schedule function game:start 6s
gamemode adventure @a[team=!spec]
gamemode spectator @a[team=spec]
bossbar set prepare players
bossbar set countdown players @a

#---傳送---
function game:prepare/teleport

#---分數---
#一直變0不知道為什麼，還沒解決
execute as @a[team=!spec] store result score @s score run clear @s emerald
scoreboard players operation @a[team=!spec] score *= 十倍 system