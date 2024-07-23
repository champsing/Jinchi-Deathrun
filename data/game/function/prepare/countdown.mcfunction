# 準備階段之開始前倒數：這時遊戲還沒開始，玩家不能動

#---設定---
scoreboard players set 倒數 system 5
schedule function game:count 1s
schedule function game:start 6s
gamemode adventure @a[team=!spec]
gamemode spectator @a[team=spec]
bossbar set prepare players
bossbar set time players @a

#---傳送---
function game:prepare/teleport

#---分數---
execute as @a[team=!spec] store result score @s score run clear @s emerald
scoreboard players operation 十倍 system *= @a score