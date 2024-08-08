# 開新遊戲前初始化
# @s: tellraw.clickPerson
# at: tellraw.clickPerson

#---設定---
tp @a @e[type = marker, limit = 1, tag = lobby]
execute at @e[type = marker, limit = 1, tag = lobby] run spawnpoint @a ~ ~ ~
clear @a
kill @e[tag=treasure_item]

scoreboard players set @e[type = marker,scores={mode=3}] mode 2
tag @a remove playing

effect clear @a
effect give @a instant_health 1 100
effect give @a resistance infinite 100 true
effect give @a saturation infinite 0 true
effect give @a night_vision infinite 0 true
effect give @a weakness infinite 100 true

scoreboard objectives setdisplay below_name
scoreboard objectives setdisplay sidebar menu

team leave @a
gamemode adventure @a
recipe take @a *
xp set @a 0 points
execute as @a at @s run playsound block.anvil.land ambient @s ~ ~ ~

#---記分板---
scoreboard players reset * gameinfo
scoreboard players reset * system
scoreboard players set 一半 system 2
scoreboard players set 一百 system 100
scoreboard players set 十倍 system 10

tag @a[tag = check_for_frozen] remove check_for_frozen
tag @a[tag = success_freeze_person] remove success_freeze_person
execute as @a[tag = frozen] run function items:freeze/restore_from_frozen
tag @a[tag = invalid] remove invalid
tag @a[tag = infinity] remove infinity
tag @a[tag = attack] remove attack
tag @a[tag = hurt] remove hurt
tag @a[tag = base_attack] remove base_attack
tag @a[tag = add_score] remove add_score
tag @a[tag = minus_score] remove minus_score
tag @a[tag = item14] remove item14
tag @a[tag = item15] remove item15
tag @a[tag = item15_target] remove item15_target
kill @e[tag = item15_marker]

bossbar set minecraft:prepare players
bossbar set countdown players

tellraw @a ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n>> ","bold":true,"color":"gold"},{"text":"所有遊戲內容已經初始化完畢，可以開始新的遊戲"}]