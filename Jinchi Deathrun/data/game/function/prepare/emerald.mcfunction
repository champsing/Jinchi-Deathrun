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
advancement revoke @a everything
recipe take @a *
xp set @a 0 levels
xp set @a 0 points
effect give @a invisibility 9 0 true
execute as @a at @s run playsound block.ender_chest.open ambient @s ~ ~ ~
title @s times 10 40 10
title @a title ["",{translate:jd.base.function.success.17_2,bold:true,color:gold},{translate:jd.game.function.prepare.emerald.22_2,bold:true,color:red}]
title @a subtitle ["",{translate:jd.game.function.prepare.emerald.23_1,bold:true,color:"green"}]

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
scoreboard players set 已準備人數 gameinfo 0
scoreboard players operation 剩餘時間 gamecore = 遊戲時間 menu
scoreboard players operation 初始分數 gameinfo = 初始分數 menu
scoreboard players operation 目標分數 gameinfo = 目標分數 menu
scoreboard players operation 初始分數綠寶石 gamecore = 初始分數 menu
scoreboard players operation 玩家人數一半 gamecore = 玩家人數 menu
scoreboard players operation 玩家人數一半 gamecore /= 一半 readonly
scoreboard players set @a[team = !spec] stamina 100

#---前端顯示格式---
# 還沒弄

#---傳送---
function game:prepare/teleport

#---準備：120秒---
scoreboard players set 準備時間 gamecore 120
bossbar set prepare players @a
execute store result bossbar minecraft:countdown max run scoreboard players get 遊戲時間 menu
execute store result bossbar minecraft:prepare max run scoreboard players get 準備時間 gamecore

tellraw @a [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.game.function.prepare.emerald.58_1,bold: true}]
tellraw @a [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.game.function.prepare.emerald.59_1}]
tellraw @a [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.game.function.prepare.emerald.60_1}]
tellraw @a [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.game.function.prepare.emerald.61_1}]
tellraw @a [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.game.function.prepare.emerald.62_1}]

function game:prepare/give_emerald
item replace entity @a[team = !spec] hotbar.8 with player_head[item_name={translate:jd.game.function.prepare.countdown.16_1, color: aqua, italic: false}, lore=[{translate:jd.game.function.prepare.emerald.65_2, color: gray, italic: false}], custom_data={ready: true}, max_stack_size=1, consumable={consume_seconds: 99999},profile={id:[I;-1347156543,384453155,-2009098362,2122167289],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTc5YTVjOTVlZTE3YWJmZWY0NWM4ZGMyMjQxODk5NjQ5NDRkNTYwZjE5YTQ0ZjE5ZjhhNDZhZWYzZmVlNDc1NiJ9fX0="}]}] 1

schedule function game:prepare/time 1s