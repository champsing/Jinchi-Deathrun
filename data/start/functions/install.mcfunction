gamerule announceAdvancements false
gamerule commandBlockOutput false
gamerule commandModificationBlockLimit 100000
gamerule disableRaids true
gamerule doDaylightCycle false
gamerule doEntityDrops false
gamerule doFireTick false
gamerule doImmediateRespawn true
gamerule doInsomnia false
gamerule doLimitedCrafting true
gamerule doMobLoot true
gamerule doMobSpawning false
gamerule doPatrolSpawning false
gamerule doTileDrops false
gamerule doTraderSpawning 
gamerule doWardenSpawning false
gamerule doWeatherCycle false
gamerule keepInventory true
gamerule logAdminCommands false
gamerule mobGriefing false
gamerule sendCommandFeedback false
gamerule spawnRadius 0

team add red "紅隊"
team add blue "藍隊"
team add red_edit
team add blue_edit
team add spec "觀戰"
team add gold
team modify red color red
team modify blue color blue
team modify red_edit color red
team modify blue_edit color blue
team modify spec color gray
team modify gold color gold
team modify red seeFriendlyInvisibles true
team modify blue seeFriendlyInvisibles true
team modify red friendlyFire false
team modify blue friendlyFire false
team join red_edit 紅隊分數
team join blue_edit 藍隊分數
team join red_edit 紅隊人數
team join blue_edit 藍隊人數
team join gold 遊戲時間
team join gold 目標分數
team join gold 玩家人數

bossbar add time "遊戲時間"
bossbar add event "事件時間"
bossbar add prepare "準備時間"
bossbar set time color yellow
bossbar set event color red
bossbar set prepare color purple

scoreboard objectives add menu dummy ["",{"text":"陣地","bold":true,"color":"gold"},{"text":"大逃殺","bold":true,"color":"red"}]
scoreboard objectives add list dummy {"text":"分數表","bold":true,"color":"gold"}
scoreboard objectives add list2 dummy "隱藏資訊"
scoreboard objectives add health health {"text":"❤","color":"red"}
scoreboard objectives add join trigger "中途加入"
scoreboard objectives add score dummy "分數"
scoreboard objectives add team_score dummy "團隊分數"

scoreboard objectives add death deathCount "死亡數"
scoreboard objectives add kill playerKillCount "殺人數"
scoreboard objectives add top_kill dummy
scoreboard objectives add top_death dummy
scoreboard objectives add total_death deathCount
scoreboard objectives add total_kill playerKillCount

scoreboard objectives add item used:carrot_on_a_stick
scoreboard objectives add base dummy

scoreboard players set 一半 list2 2
scoreboard players set 一百 list2 100
scoreboard players set 十倍 list2 10