# 亡國的刪除 entrypoint
function start:delete
team remove gold
scoreboard objectives remove menu
kill @e[tag = editing]
kill @e[tag = atm_frame]
kill @e[tag = border_a]
kill @e[tag = border_b]
tellraw @a ["",{text: ">> ", color: gold},{text: "已刪除「亡國之戰 II」所有內容", bold: true}]
