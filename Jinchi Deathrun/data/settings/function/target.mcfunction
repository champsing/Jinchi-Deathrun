#---不是大廳模式---
execute if score 操作模式 system matches 1 run return run tellraw @s ["",{"text":">> ","color":"gold"},{"text":"您目前處於編輯模式。請退出"},{"text":"編輯模式","bold":true,"color":"gold"},{"text":"更改設定。"}]
execute if score 操作模式 system matches 3 run return run tellraw @s ["",{"text":">> ","color":"gold"},{"text":"遊戲目前已經開始。請"},{"text":"結束遊戲","bold":true,"color":"gold"},{"text":"後再更改設定。"}]

#---給予反應---
execute positioned as @e[type = interaction, tag = target_interact] run particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.3 3 normal
execute if entity @s[advancements = {settings:interact/target = true}] run playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ 1 0.7 1
execute if entity @s[advancements = {settings:attack/target = true}] run playsound block.medium_amethyst_bud.break master @s ~ ~ ~ 1 0.8 1

#---不是創造---
execute as @s[gamemode = !creative] run return run tellraw @s ["",{"text":">> ","color":"gold"},{"text":"您沒有權限更動這項設定。請使用"},{"text":"創造模式","bold":true,"color":"gold"},{"text":"更改設定。"}]

#---攻擊/互動---
execute if entity @s[advancements = {settings:interact/target = true}] run scoreboard players add 目標分數 menu 500
execute if entity @s[advancements = {settings:attack/target = true}] run scoreboard players remove 目標分數 menu 500

#---超過範圍---
# min 3000 max 10000 
# 10000+500, 3000-500, -1-500, -1+500
execute if score 目標分數 menu matches -501 run scoreboard players set 目標分數 menu 10000
execute if score 目標分數 menu matches 499 run scoreboard players set 目標分數 menu 3000
execute if score 目標分數 menu matches 10500.. run scoreboard players set 目標分數 menu -1
execute if score 目標分數 menu matches ..2500 run scoreboard players set 目標分數 menu -1

#---結果---
execute if score 目標分數 menu matches 3000..10000 run scoreboard players display numberformat 目標分數 menu styled {"color":"red","bold": false}
execute if score 目標分數 menu matches 3000..10000 as @e[tag = target_value] run data modify entity @s text set value '{"score":{"name":"目標分數","objective":"menu"},"color": "white"}'
execute if score 目標分數 menu matches 3000..10000 run tellraw @a ["",{"text":">> ","color":"gold"},{"text":"目標分數設為 "},{"score":{"name":"目標分數","objective":"menu"},"bold":true,"color":"gold"}]
execute if score 目標分數 menu matches -1 run scoreboard players display numberformat 目標分數 menu fixed {"text": "無限","color": "dark_red","bold": true}
execute if score 目標分數 menu matches -1 run tellraw @a ["",{"text":">> ","color":"gold"},{"text":"目標分數設為 "},{"text": "無限","color": "dark_red","bold": true}]
execute if score 目標分數 menu matches -1 as @e[tag = target_value] run data modify entity @s text set value '{"text": "無限","color": "dark_red","bold": true}'

#---無限提示---
execute if score 目標分數 menu matches -1 run tellraw @s ["",{"text": ">> ","color": "gold","bold": true},{"text":"目標分數無限制時，時間結束時較高分的一方獲勝。若平手時，\n一旦有一方領先便立即獲勝。"},{"text":"若想強制中止遊戲，請使用指令\n"},{"text":"/function game:force_end","color":"aqua","hoverEvent": {"action": "show_text", "contents": "點擊複製指令"}, "clickEvent": {"action": "copy_to_clipboard", "value": "/function game:force_end"}}]

advancement revoke @s only settings:interact/target
advancement revoke @s only settings:attack/target