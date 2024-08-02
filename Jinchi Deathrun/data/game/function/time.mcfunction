# 每秒執行1次

#---計時---
scoreboard players remove 剩餘時間 gameinfo 1
execute as @a[scores={check_for_freeze=1..}] run scoreboard players remove @s check_for_freeze 1
execute as @a[scores={frozen=1..}] run scoreboard players remove @s frozen 1

#---偵測跑步---
execute as @a[team=!spec] if predicate stamina:is_running_mode run function stamina:consume

#---bossbar sync---
execute store result bossbar countdown value run scoreboard players get 剩餘時間 gameinfo
bossbar set countdown name [{"text":"剩餘時間： "},{"score":{"name": "剩餘時間","objective": "gameinfo"},"color": "gold"},{"text":"秒"}]

schedule function game:time 1s
execute if score 剩餘時間 gameinfo matches 0 run function game:total