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
gamerule doDaylightCycle false

time set day
clear @a


team add red "紅隊"
team add blue "藍隊"
team add spec "觀戰"
team add gold
team modify red color red
team modify blue color blue
team modify spec color gray
team modify red seeFriendlyInvisibles true
team modify blue seeFriendlyInvisibles true
team modify red friendlyFire false
team modify blue friendlyFire false
team join red 紅隊人數
team join red 紅隊分數
team join blue 藍隊人數
team join blue 藍隊分數

bossbar add countdown [{text:"剩餘時間： "},{score:{name: "剩餘時間",objective: "gamecore"},color: gold},{text:"秒"}]
# bossbar add event "事件時間"
bossbar add prepare "準備時間"
bossbar set countdown color yellow
bossbar set countdown style notched_10
# bossbar set event color red
bossbar set prepare color purple
bossbar set prepare max 2400

scoreboard objectives add menu dummy ["",{text:"陣地",bold:true,color:gold},{text:"大逃殺",bold:true,color:red}]
scoreboard objectives add gameinfo dummy {text:"遊戲資訊",bold:true,italic:true,color:gold}
scoreboard objectives add editinfo dummy {text: "編輯中",color: dark_aqua,italic: true}
scoreboard objectives add edit_cd dummy "編輯冷卻"
scoreboard objectives add gamecore dummy "遊戲核心隱藏資訊，僅能在3寫入"
scoreboard objectives add system dummy "系統分數，僅能在1和2寫入"
scoreboard objectives add readonly dummy "唯讀分數，不可寫入"
scoreboard objectives add join trigger "中途加入"

scoreboard objectives add emerald dummy "身上綠寶石數量"
scoreboard objectives add score dummy "分數"
scoreboard objectives add nearby dummy "鄰近隊友數"
scoreboard objectives add grouped dummy "小隊隊友數"
scoreboard objectives add team_score dummy "團隊分數"

scoreboard objectives add x dummy "X"
scoreboard objectives add y dummy "Y"
scoreboard objectives add z dummy "Z"

scoreboard objectives add stamina dummy "體力"
scoreboard objectives add stamina_max dummy "最大體力"

scoreboard objectives add item_cd dummy "道具冷卻"
scoreboard objectives add frozen dummy "凍結剩餘時間"
scoreboard objectives add shield dummy "護盾剩餘時間"
scoreboard objectives add front_distance dummy "前方距離"

scoreboard objectives add death deathCount "死亡數"

scoreboard objectives add top_score dummy "個人得分最多"
scoreboard objectives add top_duel dummy "對戰最多次"
scoreboard objectives add top_success dummy "成功攻陣最多次"
scoreboard objectives add top_kill dummy "陣殺最多人"
scoreboard objectives add top_invalid dummy "無效狀態最多次"
scoreboard objectives add top_item dummy "道具使用最多次"

scoreboard objectives add total_duel dummy "總對戰數"
scoreboard objectives add total_success dummy "總攻陣數"
scoreboard objectives add total_kill dummy "總陣殺數"
scoreboard objectives add total_invalid dummy "總無效狀態次數"
scoreboard objectives add total_item dummy "總道具使用數"

scoreboard players set 操作模式 system 1
scoreboard objectives setdisplay sidebar editinfo

# 常數
scoreboard players set 一半 readonly 2
scoreboard players set 十倍 readonly 10
scoreboard players set 一分鐘 readonly 60

scoreboard players set 遊戲時間分鐘 system 15
scoreboard players set 遊戲模式 menu 99999
scoreboard players display numberformat 遊戲模式 menu fixed {text:"對戰",color:"#ac75b9",bold:true}
scoreboard players set 初始分數 menu 1000
scoreboard players set 目標分數 menu 3000
scoreboard players set 遊戲時間 menu 900

scoreboard players operation 本地 version = 包 version
