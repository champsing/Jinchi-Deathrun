execute positioned as @e[type = interaction, tag = edit] run particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.3 3 normal
playsound block.medium_amethyst_bud.break master @s ~ ~ ~ 1 0.8 1

#---不是創造---
execute as @s[gamemode = !creative] run return run tellraw @s ["",{"text":">> ","color":"gold"},{"text":"您沒有權限操作編輯模式。請使用"},{"text":"創造模式","bold":true,"color":"gold"},{"text":"操作編輯模式。"}]

execute if score 操作模式 system matches 3 run return run tellraw @s ["",{"text":">> ","color":"gold"},{"text":"遊戲目前已經開始，您"},{"text":"不能操作","bold":true,"color":"red"},{"text":"編輯模式。"}]

advancement revoke @s only edit:edit
execute if score 操作模式 system matches 1 run return run function edit:exit
execute if score 操作模式 system matches 2 run return run function edit:edit
