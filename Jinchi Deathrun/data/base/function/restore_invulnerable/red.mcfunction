execute at @e[tag=base,tag=red] run fill ~ ~-2 ~ ~ ~5 ~ smooth_quartz
execute at @e[tag=base,tag=red] run setblock ~ ~ ~ red_stained_glass_pane
data merge entity @e[tag=base,tag=red,limit=1] {Invulnerable: 0b}

tellraw @a ["",{"text":">> ","color":"gold"},{"text": "紅隊","color": "red"},{"text": "陣地已失去無敵狀態，可被攻陣。"}]