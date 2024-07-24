execute as @a[team=!spec] run title @s actionbar [{"text":"個人分數: ","bold":true,"color":"aqua"},{"score":{"name":"@s","objective":"score"}},{"text":"    團隊分數: ","bold":true,"color":"aqua"},{"score":{"name":"@s","objective":"team_score"}}]
execute as @a[team=!spec,tag=infinity] run title @s actionbar [{"text":"個人分數: ","bold":true,"color":"aqua"},{"text":"無限","bold":true,"color":"#871ea7"},{"score":{"name":"@s","objective":"score"}}]

#---準備時間---
execute if score 準備時間 system matches 1.. store result bossbar prepare value run scoreboard players remove 準備時間 system 1
execute if score 準備時間 system matches 0 run function game:prepare/countdown

#---開始---
execute as @a[team=!spec] at @s if score 倒數 system matches 0..5 run function game:prepare/teleport
execute as @a[tag=!start] run function start:spectate
execute as @a[team=spec] at @s if entity @s[y=-120,dy=40] run tp @s @e[tag=middle,limit=1]
execute as @a[scores={death=1}] at @s if entity @e[type=marker,tag=lobby,limit=1,distance=..0.1] run function game:death
execute if score 勝負已分 system matches 0 as @a[team=!spec] at @s run function game:border
execute as @a[scores={join=1..}] run function game:join

#---合體---
execute as @a[team=red] at @s store result score @s nearby if entity @a[team=red,distance=..5]
execute as @a[team=blue] at @s store result score @s nearby if entity @a[team=blue,distance=..5]
execute as @a[team=!spec] unless score @s nearby = @s grouped run function game:teaming

#---陣地---
execute as @a[team=red] at @s if entity @e[team=red,tag=base,distance=..1] run function base:infinity
execute as @a[team=blue] at @s if entity @e[team=blue,tag=base,distance=..1] run function base:infinity
execute as @a[team=red] at @s unless entity @e[team=red,tag=base,distance=..1] run tag @s remove infinity
execute as @a[team=blue] at @s unless entity @e[team=blue,tag=base,distance=..1] run tag @s remove infinity

#---體力---
execute as @a[team=!spec] if predicate stamina:is_running_mode run function stamina:consume
execute as @a[team=!spec,scores={stamina=..39}] run function stamina:effect

#---任務---
# execute if score 任務倒數 system matches 1.. run function event:tick

#---結算---
execute if score 紅隊分數 gameinfo >= 目標分數 menu run function game:end/red
execute if score 藍隊分數 gameinfo >= 目標分數 menu run function game:end/blue