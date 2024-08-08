execute positioned as @e[type = interaction, tag = edit] run particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.3 3 normal
playsound block.medium_amethyst_bud.break master @s ~ ~ ~ 1 0.8 1

execute if entity @e[tag = lobby, scores = {mode = 3}] run return run tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"遊戲目前已經開始，您"},{"text":"不能操作","bold":true,"color":"red"},{"text":"編輯模式。"}]

advancement revoke @s only edit:edit
execute if entity @e[tag = lobby, scores = {mode = 1}] run return run function edit:exit
execute if entity @e[tag = lobby, scores = {mode = 2}] run return run function edit:edit