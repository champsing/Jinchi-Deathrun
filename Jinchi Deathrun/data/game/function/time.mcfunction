# 每秒執行1次

#---凍結---
execute as @a[scores={check_for_freeze=1..}] run scoreboard players remove @s check_for_freeze 1
execute as @a[scores={frozen=1..}] run scoreboard players remove @s frozen 1

#---計時---
execute unless score 延長賽 gamecore matches 1 unless score 勝負已分 gamecore matches 1 run scoreboard players remove 剩餘時間 gameinfo 1

#---bossbar sync---
execute unless score 延長賽 gamecore matches 1 store result bossbar countdown value run scoreboard players get 剩餘時間 gameinfo
execute unless score 延長賽 gamecore matches 1 unless score 勝負已分 gamecore matches 1 run bossbar set countdown name [{"text":"剩餘時間： "},{"score":{"name": "剩餘時間","objective": "gameinfo"},"color": "gold"},{"text":"秒"}]

#---偵測勝者---
execute unless score 目標分數 menu matches -1 unless score 勝負已分 gamecore matches 1 run function game:end/reach_goal
execute unless score 勝負已分 gamecore matches 1 if score 剩餘時間 gameinfo matches ..0 run function game:end/choose_endings

schedule function game:time 1s
