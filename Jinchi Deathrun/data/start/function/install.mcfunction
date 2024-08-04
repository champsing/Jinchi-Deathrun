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
gamerule doTraderSpawning false
gamerule doWardenSpawning false
gamerule doWeatherCycle false
gamerule keepInventory true
gamerule logAdminCommands false
gamerule mobGriefing false
gamerule sendCommandFeedback false
gamerule spawnRadius 0

team add red "紅隊"
team add blue "藍隊"
team add spec "觀戰"
team add gold
team modify red color red
team modify blue color blue
team modify spec color gray
team modify gold color gold
team modify red seeFriendlyInvisibles true
team modify blue seeFriendlyInvisibles true
team modify red friendlyFire false
team modify blue friendlyFire false
team join gold 遊戲模式
team join gold 遊戲時間
team join gold 初始分數
team join gold 目標分數
team join gold 玩家人數
team join red 紅隊人數
team join blue 藍隊人數

bossbar add countdown [{"text":"剩餘時間： "},{"score":{"name": "剩餘時間","objective": "gameinfo"},"color": "gold"},{"text":"秒"}]
# bossbar add event "事件時間"
bossbar add prepare "準備時間"
bossbar set countdown color yellow
bossbar set countdown style notched_10
# bossbar set event color red
bossbar set prepare color purple
bossbar set prepare max 2400

scoreboard objectives add menu dummy ["",{"text":"陣地","bold":true,"color":"gold"},{"text":"大逃殺","bold":true,"color":"red"}]
scoreboard objectives add gameinfo dummy {"text":"遊戲資訊","bold":true,"italic":true,"color":"gold"}
scoreboard objectives add editinfo dummy {"text": "編輯中","color": "dark_aqua","italic": true}
scoreboard objectives add mode dummy "模式和關於"
scoreboard objectives add system dummy "隱藏資訊"
scoreboard objectives add join trigger "中途加入"
scoreboard objectives add score dummy "分數"
scoreboard objectives add team_score dummy "團隊分數"
scoreboard objectives add teammate dummy "隊友人數"
scoreboard objectives add x dummy "X"
scoreboard objectives add y dummy "Y"
scoreboard objectives add z dummy "Z"
scoreboard objectives add border_x dummy "X邊界"
scoreboard objectives add border_y dummy "Y邊界"
scoreboard objectives add border_z dummy "Z邊界"
scoreboard objectives add nearby dummy "鄰近隊友數"
scoreboard objectives add grouped dummy "小隊隊友數"
scoreboard objectives add stamina dummy "體力"
scoreboard objectives add stamina_max dummy "最大體力"
scoreboard objectives add item_cd dummy "道具冷卻"
scoreboard objectives add check_for_frozen dummy "檢查被單人凍結"
scoreboard objectives add check_for_freeze dummy "檢查單人凍結"
scoreboard objectives add frozen dummy "凍結剩餘時間"

scoreboard objectives add death deathCount "死亡數"
scoreboard objectives add top_duel dummy
scoreboard objectives add top_score dummy
scoreboard objectives add total_duel dummy "總對決數"

scoreboard objectives add item used:carrot_on_a_stick
scoreboard objectives setdisplay sidebar editinfo

scoreboard players set 一半 system 2
scoreboard players set 一百 system 100
scoreboard players set 十倍 system 10
scoreboard players set 一分鐘 system 60
scoreboard players set 遊戲時間分鐘 system 15
scoreboard players set 遊戲模式 menu 99999
scoreboard players display numberformat 遊戲模式 menu fixed {"text":"對戰","color":"dark_purple","bold":true}
scoreboard players set 初始分數 menu 500
scoreboard players set 目標分數 menu 3000
scoreboard players set 遊戲時間 menu 900
scoreboard players set @e[tag = lobby] mode 1

scoreboard players set 更新 mode 1

#---隨機生成貨櫃系統資料包也要 install---
# (指令)