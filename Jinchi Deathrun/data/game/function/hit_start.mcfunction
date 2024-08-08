execute positioned as @e[type = interaction, tag = start] run particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.3 3 normal
playsound block.medium_amethyst_bud.break master @s ~ ~ ~ 1 0.8 1

execute if entity @e[tag = lobby, scores = {mode = 1}] run return run tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"您目前處於編輯模式。請退出"},{"text":"編輯模式","bold":true,"color":"gold"},{"text":"再開始遊戲。"}]
execute if entity @e[tag = lobby, scores = {mode = 3}] run return run tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"遊戲目前已經開始。請"},{"text":"結束遊戲","bold":true,"color":"gold"},{"text":"後才能再開始新遊戲。"}]

execute if entity @e[tag = lobby, scores = {mode = 2}] run function game:prepare/emerald