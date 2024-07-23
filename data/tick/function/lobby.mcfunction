execute as @a[tag=!join] run function start:join
execute as @a[scores={death=1}] at @s if entity @e[type=area_effect_cloud,tag=lobby,limit=1,distance=..0.1] run function start:death
execute as @a at @s if entity @s[y=-120,dy=50] run tp @s @e[type=area_effect_cloud,tag=lobby,limit=1]
execute store result score 玩家人數 menu if entity @a[team=!spec]
execute store result score 紅隊人數 menu if entity @a[team=red]
execute store result score 藍隊人數 menu if entity @a[team=blue]
execute at @e[tag = settings, type = minecraft:interaction] run particle squid_ink ~ ~ ~ 0.1 0.1 0.1 0.01 1 normal
execute at @e[tag = settings, type = minecraft:interaction] run particle dust{color: [0.624, 0.765, 0.945], scale: 1.0} ~ ~ ~ 0.5 0.5 0.5 0.1 12 normal