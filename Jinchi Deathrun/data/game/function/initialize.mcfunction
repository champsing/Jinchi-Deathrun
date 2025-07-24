# 開新遊戲前初始化
# @s: tellraw.clickPerson
# at: tellraw.clickPerson

#---設定---
tp @a @e[type = marker, limit = 1, tag = lobby]
execute at @e[type = marker, limit = 1, tag = lobby] run spawnpoint @a ~ ~ ~
clear @a
kill @e[tag=treasure_item]

advancement revoke @a everything

scoreboard players set 操作模式 system 2
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
team modify red prefix ""
team modify blue prefix ""
gamemode adventure @a
recipe take @a *
xp set @a 0 points
execute as @a at @s run playsound block.anvil.land ambient @s ~ ~ ~

#---記分板---
scoreboard players reset * gameinfo
scoreboard players reset * gamecore
scoreboard players reset * score
scoreboard players reset * top_duel
scoreboard players reset * top_success
scoreboard players reset * top_kill
scoreboard players reset * total_duel
scoreboard players reset * total_success
scoreboard players reset * total_kill
scoreboard players reset * grouped
scoreboard players reset * item
scoreboard players reset * item_cd
scoreboard players reset * teammate
scoreboard players reset * stamina
scoreboard players reset * stamina_max
scoreboard players reset * frozen
scoreboard players reset * check_for_freeze
#(to be added...)

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
tag @a[tag = item10_target] remove item10_target
tag @a[tag = item15_target] remove item15_target
kill @e[tag = item15_marker]

bossbar set minecraft:prepare players
bossbar set countdown players


tellraw @a ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n>> ","color":"gold"},{"text":"所有遊戲內容已經初始化完畢，可以開始新的遊戲"}]