#---給予反應---
execute positioned as @e[type = interaction, tag = target_interact] run particle flash ~ ~ ~ 0.1 0.1 0.1 0.3 1 normal
execute if entity @s[advancements = {settings:interact/target = true}] run playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ 1 0.7 1
execute if entity @s[advancements = {settings:attack/target = true}] run playsound block.medium_amethyst_bud.break master @s ~ ~ ~ 1 0.8 1

#---不是創造---
execute as @s[gamemode = !creative] run return run tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"您沒有權限更動這項設定。請使用"},{"text":"創造模式","bold":true,"color":"gold"},{"text":"更改設定。"}]

#---攻擊/互動---
execute if entity @s[advancements = {settings:interact/target = true}] run scoreboard players add 目標分數 menu 1000
execute if entity @s[advancements = {settings:attack/target = true}] run scoreboard players remove 目標分數 menu 1000

#---超過範圍---
# min 5000 max 15000 
# 15000+1000, 5000-1000, -1-1000, -1+1000
execute if score 目標分數 menu matches 16000.. run scoreboard players set 目標分數 menu -1
execute if score 目標分數 menu matches ..4000 run scoreboard players set 目標分數 menu -1
execute if score 目標分數 menu matches -1001 run scoreboard players set 目標分數 menu 15000
execute if score 目標分數 menu matches 999 run scoreboard players set 目標分數 menu 5000

#---無限提示---
execute if score 目標分數 menu matches -1 run scoreboard players display numberformat 目標分數 menu fixed {"text": "無限","color": "dark_red","bold": true}
execute if score 目標分數 menu matches -1 run tellraw @s ["",{"text": ">> ","color": "gold"},{"text":"目標分數無限制時，時間結束時較高分的一方獲勝。若平手時，一旦有一方領先便立即獲勝。"}]
execute if score 目標分數 menu matches -1 run tellraw @s ["",{"text": ">> ","color": "gold"},{"text":"若想強制中止遊戲，請使用指令"},{"text":"/function game:force_end","bold":true,"color":"aqua","hoverEvent": {"action": "show_text", "contents": "點擊複製指令"}, "clickEvent": {"action": "copy_to_clipboard", "value": "/function game:force_end"}}]

#---結果---
execute as @e[tag = target_value] run data modify entity @s text set value '{"score":{"name":"目標分數","objective":"menu"}}'
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"初始分數設為 "},{"score":{"name":"初始分數","objective":"menu"},"bold":true,"color":"gold"}]

advancement revoke @s only settings:interact/target
advancement revoke @s only settings:attack/target