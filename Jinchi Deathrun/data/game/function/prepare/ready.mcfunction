clear @s player_head[custom_data={ready: true}]
scoreboard players add 已準備人數 gameinfo 1
tellraw @a ["",{text:">> ",color: gold},{selector: "@s"}," 已準備"]