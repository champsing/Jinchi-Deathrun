#---計時---
scoreboard players remove 剩餘時間 gameinfo 1
schedule function game:time 1s
execute if score 剩餘時間 gameinfo matches 0 run function game:total