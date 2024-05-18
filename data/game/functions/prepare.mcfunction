#---設定---
scoreboard players set 倒數 list2 5
schedule function game:count 1s
schedule function game:start 6s
gamemode survival @a[team=!spec]
gamemode spectator @a[team=spec]
bossbar set prepare players
bossbar set time players @a

#---傳送---
tp @a[team=red,tag=Rking] @e[tag=kingspawn,team=red_edit,limit=1]
tp @a[team=blue,tag=Bking] @e[tag=kingspawn,team=blue_edit,limit=1]
tp @a[team=spec] @e[tag=middle,limit=1]

#---分數---
execute as @a[team=!spec] store result score @s score run clear @s emerald
scoreboard players operation 十倍 list2 *= @a score