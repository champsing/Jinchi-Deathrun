#---計時---
scoreboard players add 遊戲時間 gameinfo 1
schedule function game:time 1s
execute if score 遊戲時間 gameinfo = 遊戲時間 menu run function game:total