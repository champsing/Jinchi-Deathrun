clear @s player_head[custom_data={ready: true}]
scoreboard players add 已準備人數 gameinfo 1
tellraw @a [{translate: jd.empty},{translate:"jd.console",color: gold},{selector: "@s"}," 已準備"]