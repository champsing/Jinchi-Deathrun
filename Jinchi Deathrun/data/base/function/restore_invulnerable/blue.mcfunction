execute at @e[tag=blue_base] run setblock ~ ~ ~ blue_stained_glass_pane
execute at @e[tag=blue_base] run fill ~ ~-2 ~ ~ ~5 ~ smooth_quartz
data merge entity @e[tag=blue_base,limit=1] {Invulnerable: 0b}

tellraw @a ["",{"text":">> ","color":"gold"},{"text": "藍隊","color": "blue"},{"text": "陣地已失去無敵狀態，可被攻陣。"}]