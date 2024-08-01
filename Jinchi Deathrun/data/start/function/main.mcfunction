execute as @e[type = marker, scores={mode=1}] run function tick:edit
execute as @e[type = marker, scores={mode=2}] run function tick:lobby
execute as @e[type = marker, scores={mode=3}] run function tick:start
execute as @e[type = marker, tag = lobby] unless score 更新 mode matches 1 run function start:update