advancement revoke @s only game:ready
scoreboard players add 已準備人數 gameinfo 1
tellraw @a ["",{text:">> ",color: gold},{selector: "@s"}," 已準備"]