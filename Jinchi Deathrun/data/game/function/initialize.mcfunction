# 開新遊戲前初始化
# 準備階段之分配綠寶石：這時遊戲還沒開始，玩家可以動

#---設定---
tp @a @e[type = marker, limit = 1, tag = lobby]
execute at @e[type = marker, limit = 1, tag = lobby] run spawnpoint @a ~ ~ ~
clear @a
kill @e[tag=treasure_item]

tag @e[type=marker,tag=start] remove start
tag @a remove start

effect clear @a
effect give @a instant_health 1 100
effect give @a resistance infinite 100 true
effect give @a saturation infinite 0 true
effect give @a night_vision infinite 0 true
effect give @a weakness infinite 100 true

scoreboard objectives setdisplay below_name
scoreboard objectives setdisplay sidebar menu

setblock ~ ~ ~ air
team leave @a
gamemode adventure @a
recipe take @a *
execute as @a at @s run playsound block.anvil.land ambient @s ~ ~ ~

#---記分板---
scoreboard players reset * gameinfo
scoreboard players reset * system
scoreboard players set 一半 system 2
scoreboard players set 一百 system 100
scoreboard players set 十倍 system 10

bossbar set countdown visible false

tellraw @a ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n>> ","bold":true,"color":"gold"},{"text":"所有遊戲內容已經初始化完畢，可以開始新的遊戲"}]