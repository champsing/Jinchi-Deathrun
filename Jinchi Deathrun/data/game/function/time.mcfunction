# 每秒執行1次

#---凍結---
execute as @a[scores = {frozen = 1..}] run scoreboard players remove @s frozen 1
#---排程解除凍結---
execute as @a[tag = frozen] if score @s frozen matches 0 run function items:freeze/restore

#---護盾---
execute as @a[scores = {shield = 1..}] run scoreboard players remove @s shield 1
#---排程解除護盾---
execute as @a[predicate=items:has_shield] if score @s shield matches 0 run function items:shield/restore

#---計時---
execute unless score 延長賽 gamecore matches 1 unless score 勝負已分 gamecore matches 1 unless score 準備階段 gamecore matches 1 run scoreboard players remove 剩餘時間 gamecore 1

#---消道具冷卻---
execute unless score 勝負已分 gamecore matches 1 as @a[scores = {item_cd = 1..}] run scoreboard players remove @s item_cd 1

#---bossbar sync---
execute unless score 延長賽 gamecore matches 1 store result bossbar countdown value run scoreboard players get 剩餘時間 gamecore
execute unless score 延長賽 gamecore matches 1 unless score 勝負已分 gamecore matches 1 run bossbar set countdown name [{text:"剩餘時間： "},{score:{name: "剩餘時間",objective: "gamecore"},color: gold},{text:"秒"}]

#---偵測勝者---
execute unless score 目標分數 menu matches -1 unless score 勝負已分 gamecore matches 1 run function game:end/reach_goal
execute unless score 勝負已分 gamecore matches 1 if score 剩餘時間 gamecore matches ..0 run function game:end/choose_endings

#---清除綠寶---
execute as @a[scores={emerald = 1..}] run function game:clear_emerald

schedule function game:time 1s
