# 開新遊戲前初始化
# @s: tellraw.clickPerson
# at: tellraw.clickPerson

#---設定---
tp @a @n[type = marker, tag = lobby]
execute at @n[type = marker, tag = lobby] run spawnpoint @a ~ ~ ~
clear @a
kill @e[tag = treasure_item]
kill @e[type = trident]
kill @e[tag = red_base, type = !armor_stand]
kill @e[tag = blue_base, type = !armor_stand]

scoreboard players set 操作模式 system 2

effect clear @a
effect give @a instant_health 1 100
effect give @a resistance infinite 100 true
effect give @a saturation infinite 0 true
effect give @a night_vision infinite 0 true
effect give @a weakness infinite 100 true

scoreboard objectives setdisplay below_name
scoreboard objectives setdisplay sidebar menu

tag @a remove playing
advancement revoke @a everything
team leave @a
team modify red prefix ""
team modify blue prefix ""
gamemode adventure @a
recipe take @a *
xp set @a 0 levels
execute as @a at @s run playsound block.anvil.land ambient @s ~ ~ ~

#---記分板---
scoreboard players reset * death
scoreboard players reset * gameinfo
scoreboard players reset * gamecore
scoreboard players reset * score
scoreboard players reset * top_score
scoreboard players reset * top_duel
scoreboard players reset * top_success
scoreboard players reset * top_kill
scoreboard players reset * top_invalid
scoreboard players reset * top_item
scoreboard players reset * total_duel
scoreboard players reset * total_success
scoreboard players reset * total_kill
scoreboard players reset * total_invalid
scoreboard players reset * total_item
scoreboard players reset * grouped
scoreboard players reset * team_score
scoreboard players reset * item
scoreboard players reset * item_cd
scoreboard players reset * stamina
scoreboard players reset * stamina_max
scoreboard players reset * frozen
scoreboard players reset * front_distance
#(to be added...)


tag @a[tag = success_freeze_person] remove success_freeze_person
execute as @a[tag = frozen] run function items:freeze/restore_from_frozen
tag @a[tag = invalid] remove invalid
tag @a[tag = infinity] remove infinity

tag @a[tag = add_score] remove add_score
tag @a[tag = minus_score] remove minus_score
tag @a[tag = items.convention] remove items.convention
tag @a[tag = items.interchange] remove items.interchange
tag @a[tag = items.convention.tped] remove items.convention.tped
tag @a[tag = items.interchange.tped] remove items.interchange.tped
tag @a[tag = items.freeze_single.target] remove items.freeze_single.target
tag @a[tag = items.freeze_single.user] remove items.freeze_single.user
kill @e[tag = items.interchange_marker]

bossbar set minecraft:prepare players
bossbar set countdown players


tellraw @a ["",{text:"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n>> ",color:gold},{text:"所有遊戲內容已經初始化完畢，可以開始新的遊戲"}]