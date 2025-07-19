#---不是大廳或編輯模式---
execute if score 操作模式 system matches 3 run return run tellraw @s ["",{"text":">> ","color":"gold"},{"text":"遊戲目前已經開始。請"},{"text":"結束遊戲","bold":true,"color":"gold"},{"text":"後再瀏覽場地配置。"}]

#---給予反應---
execute positioned as @e[type = interaction, tag = config] run particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.3 3 normal
execute if entity @s[advancements = {settings:attack/config = true}] run playsound block.medium_amethyst_bud.break master @s ~ ~ ~ 1 0.8 1

#---印出場地配置---
tellraw @a {"text": "場地配置"}
# tellraw @a [{text:""}]

advancement revoke @s only settings:attack/config