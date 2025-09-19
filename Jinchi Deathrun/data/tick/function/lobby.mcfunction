execute as @a[tag = !join] run function start:join
execute as @a[scores = {death = 1}] at @s if entity @e[type = marker, tag = jd.lobby, limit = 1, distance = ..0.1] run function start:death
execute as @a at @s if entity @s[y=-120,dy=50] run tp @s @n[type = marker, tag = jd.lobby]
execute store result score 玩家人數 menu if entity @a[team = !spec]
execute store result score 紅隊人數 menu if entity @a[team = red]
execute store result score 藍隊人數 menu if entity @a[team = blue]
execute store result score 寶箱點數量 menu if entity @e[tag = treasure_point]

#---這時候非創造模式的玩家不應該操作設定、開始遊戲、進入編輯模式---
advancement revoke @a[gamemode = !creative] from settings:root
advancement revoke @a[gamemode = !creative] only edit:edit

#---編輯、設定、開始 粒子效果高亮---
execute at @e[tag = settings, type = interaction] positioned ~ ~0.5 ~ run particle squid_ink ~ ~ ~ 0.1 0.1 0.1 0.01 1 normal
execute at @e[tag = settings, type = interaction] positioned ~ ~0.5 ~ run particle dust{color: [0.541, 0.902, 0.722], scale: 1.0} ~ ~ ~ 0.3 0.3 0.3 0.1 12 normal
execute at @e[tag = edit, type = interaction] positioned ~ ~0.5 ~ run particle dust{color: [0.65,0.0,0.78], scale: 1.0} ~ ~ ~ 0.3 0.3 0.3 0.1 12 normal
execute at @e[tag = start, type = interaction] positioned ~ ~0.5 ~ run particle dust{color: [0.52,0.83,0.31], scale: 1.0} ~ ~ ~ 0.3 0.3 0.3 0.1 12 normal

#---粒子效果高亮---
execute as @n[tag = oreki] at @s run tp @s ~ ~ ~ ~2 ~
execute as @n[tag = oreki] at @s run particle enchant ^ ^.25 ^-.83 0 0 0 0 10
execute as @n[tag = oreki] at @s run particle minecraft:glow ^ ^.25 ^-.83 0 3 0 2 1