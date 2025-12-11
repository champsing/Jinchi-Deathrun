# 每秒執行1次

#---準備時間---
bossbar set prepare name [{text:"準備時間： "},{score:{name: "準備時間",objective: "gamecore"},color: aqua},{text:"秒"}]
execute if score 準備時間 gamecore matches 1.. store result bossbar prepare value run scoreboard players remove 準備時間 gamecore 1
execute if score 準備時間 gamecore matches 0 run return run function game:prepare/countdown
execute if score 已準備人數 gameinfo = 玩家人數 menu run return run function game:prepare/countdown

schedule function game:prepare/time 1s