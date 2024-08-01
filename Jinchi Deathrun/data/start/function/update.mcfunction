execute if entity @e[type = marker,scores={mode=3}] run function game:force_end

function start:install

tellraw @a ["",{"text": ">> ","color":"gold"},{"text":"資料包更新成功","color":"green"}]