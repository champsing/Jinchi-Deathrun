#---給予反應---
execute positioned as @e[type = interaction, tag = time_interact] run particle flash ~ ~ ~ 0.1 0.1 0.1 0.3 1 normal
execute if entity @s[advancements = {settings:interact/time = true}] run playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ 1 0.7 1
execute if entity @s[advancements = {settings:attack/time = true}] run playsound block.medium_amethyst_bud.break master @s ~ ~ ~ 1 0.8 1

#---不是創造---
execute as @s[gamemode = !creative] run return run tellraw @s[gamemode = !creative] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"您沒有權限更動這項設定。請使用"},{"text":"創造模式","bold":true,"color":"gold"},{"text":"更改設定。"}]

#---攻擊/互動---
#---單位: 秒---
execute if entity @s[advancements = {settings:interact/time = true}] run scoreboard players add 遊戲時間 menu 300
execute if entity @s[advancements = {settings:attack/time = true}] run scoreboard players remove 遊戲時間 menu 300

#---超過範圍---
# min 15分鐘 max 2小時
execute if score 遊戲時間 menu matches 3900.. run scoreboard players set 遊戲時間 menu 900
execute if score 遊戲時間 menu matches ..600 run scoreboard players set 遊戲時間 menu 7200

#---結果---
execute as @e[tag = time_value] run data modify entity @s text set value '{"score":{"name":"遊戲時間","objective":"menu"}}'
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"遊戲時間設為 "},{"score":{"name":"遊戲時間","objective":"menu"},"bold":true,"color":"gold"}]

advancement revoke @s only settings:interact/time
advancement revoke @s only settings:attack/time