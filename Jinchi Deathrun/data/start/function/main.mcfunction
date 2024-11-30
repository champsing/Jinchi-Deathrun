execute as @e[type = marker, tag = lobby] if score 操作模式 system matches 1 run function tick:edit
execute as @e[type = marker, tag = lobby] if score 操作模式 system matches 2 run function tick:lobby
execute as @e[type = marker, tag = lobby] if score 操作模式 system matches 3 run function tick:start
execute as @e[type = marker, tag = lobby] unless score 更新 mode matches 1 run function start:update