# 每秒執行1次

#---計時---
scoreboard players remove 剩餘時間 gameinfo 1
execute as @a[scores={check_for_freeze=1..}] run scoreboard players remove @s check_for_freeze 1
execute as @a[scores={frozen=1..}] run scoreboard players remove @s frozen 1
schedule function game:time 1s
execute if score 剩餘時間 gameinfo matches 0 run function game:total