execute if score 操作模式 system matches 3 run function game:force_end

gamerule announceAdvancements true
execute unless score 預設世界 system matches 1 run gamerule commandBlockOutput true
gamerule commandModificationBlockLimit 100000
gamerule disableRaids false
gamerule doDaylightCycle true
gamerule doEntityDrops true
gamerule doFireTick true
gamerule doImmediateRespawn false
gamerule doInsomnia true
gamerule doLimitedCrafting false
gamerule doMobLoot false
gamerule doMobSpawning true
gamerule doPatrolSpawning true
gamerule doTileDrops true
gamerule doTraderSpawning true
gamerule doWardenSpawning true
gamerule doWeatherCycle true
gamerule keepInventory false
gamerule logAdminCommands true
gamerule mobGriefing true
gamerule sendCommandFeedback true
gamerule spawnRadius 0

team remove red
team remove blue
team remove spec

bossbar remove countdown
# bossbar remove event
bossbar remove prepare

kill @e[tag = jd.lobby]
kill @e[tag = settings]
kill @e[tag = edit]
kill @e[tag = start]
kill @e[tag = room_name]
kill @e[tag = rp_test]
kill @e[tag = showcase]
kill @e[tag = champsing]
kill @e[tag = collaborators]
kill @e[tag = treasure_item]

execute if score 刪除標記盔甲座 system matches 1 run kill @e[tag = edit_amst]
execute if score 刪除標記盔甲座 system matches 1 run kill @e[tag = treasure_point]
clear @a

scoreboard objectives remove version
scoreboard objectives remove menu
scoreboard objectives remove gameinfo
scoreboard objectives remove editinfo
scoreboard objectives remove edit_cd
scoreboard objectives remove gamecore
scoreboard objectives remove system
scoreboard objectives remove readonly
scoreboard objectives remove shocked
scoreboard objectives remove duel_cd

scoreboard objectives remove join
scoreboard objectives remove score
scoreboard objectives remove team_score
scoreboard objectives remove x
scoreboard objectives remove y
scoreboard objectives remove z
scoreboard objectives remove emerald
scoreboard objectives remove grouped
scoreboard objectives remove stamina
scoreboard objectives remove stamina_max
scoreboard objectives remove item_cd
scoreboard objectives remove frozen
scoreboard objectives remove shield
scoreboard objectives remove death
scoreboard objectives remove front_distance

scoreboard objectives remove top_duel
scoreboard objectives remove top_contribution
scoreboard objectives remove top_success
scoreboard objectives remove top_invalid
scoreboard objectives remove top_item
scoreboard objectives remove top_kill

scoreboard objectives remove total_duel
scoreboard objectives remove total_success
scoreboard objectives remove total_kill
scoreboard objectives remove total_invalid
scoreboard objectives remove total_item

tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
tellraw @a ["",{translate:jd.edit.function.config.5_1,color:gold},{translate:jd.start.function.uninstall.main.90_2,color:"green"}]
tellraw @s ["",{translate:jd.edit.function.config.5_1,color:gold},{translate:jd.start.function.uninstall.main.91_2,color: red},{translate:jd.start.function.uninstall.main.91_3,color:gray},{translate:jd.start.function.intro.12_1,color:aqua,bold:true,underlined: true,click_event: {action: "run_command",command: "/function start:activate"},hover_event: {action: "show_text",value: [{translate:jd.start.function.load.15_3}]}}]