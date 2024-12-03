execute if score 操作模式 system matches 3 run function game:force_end

gamerule announceAdvancements true
gamerule commandBlockOutput true
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
team remove gold
team modify red color red
team modify blue color blue

bossbar remove countdown
# bossbar remove event
bossbar remove prepare

scoreboard objectives remove version
scoreboard objectives remove menu
scoreboard objectives remove gameinfo
scoreboard objectives remove editinfo
scoreboard objectives remove edit_cd
scoreboard objectives remove gamecore
scoreboard objectives remove system
scoreboard objectives remove readonly

scoreboard objectives remove join
scoreboard objectives remove score
scoreboard objectives remove team_score
scoreboard objectives remove teammate
scoreboard objectives remove x
scoreboard objectives remove y
scoreboard objectives remove z
scoreboard objectives remove border_x
scoreboard objectives remove border_y
scoreboard objectives remove border_z
scoreboard objectives remove nearby
scoreboard objectives remove grouped
scoreboard objectives remove stamina
scoreboard objectives remove stamina_max
scoreboard objectives remove item
scoreboard objectives remove item_cd
scoreboard objectives remove frozen
scoreboard objectives remove check_for_freeze
scoreboard objectives remove check_for_frozen
scoreboard objectives remove death
scoreboard objectives remove top_duel
scoreboard objectives remove top_score
scoreboard objectives remove total_duel

kill @e[tag = lobby]
kill @e[tag = display]
kill @e[tag = settings]
kill @e[tag = champsing, type = interaction]
kill @e[tag = champsing, type = armor_stand]
kill @e[tag = treasure_item]
kill @e[tag = treasure_point]
kill @e[tag = border]
#---隨機生成貨櫃系統資料包也要 uninstall---
# (指令)

tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
tellraw @a ["",{"text": ">> ","color":"gold"},{"text":"資料包解除安裝成功","color":"green"}]
tellraw @s ["",{"text": ">> ","color":"gold"},{"text":"如果想重新安裝資料包請","color": "red"},{"text": "點擊 ","color":"gray"},{"text": "此處","color":"aqua","bold":true,"underlined": true,"clickEvent": {"action": "run_command","value": "/function start:activate"}}]