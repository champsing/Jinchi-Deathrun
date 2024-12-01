# 99999 對戰 99998 捍衛

#---先return 還沒新增，新增後可以刪除---
advancement revoke @s only settings:interact/mode
advancement revoke @s only settings:attack/mode
return run tellraw @s ["",{"text":">> ","color":"gold"},{"text":"目前尚未開放這項功能，敬請期待！","color": "red"}]

#---不是大廳模式---
execute if score 操作模式 system matches 1 run return run tellraw @s ["",{"text":">> ","color":"gold"},{"text":"您目前處於編輯模式。請退出"},{"text":"編輯模式","bold":true,"color":"gold"},{"text":"更改設定。"}]
execute if score 操作模式 system matches 3 run return run tellraw @s ["",{"text":">> ","color":"gold"},{"text":"遊戲目前已經開始。請"},{"text":"結束遊戲","bold":true,"color":"gold"},{"text":"後再更改設定。"}]

#---給予反應---
execute positioned as @e[type = interaction, tag = mode_interact] run particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.3 3 normal
execute if entity @s[advancements = {settings:interact/mode = true}] run playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ 1 0.7 1
execute if entity @s[advancements = {settings:attack/mode = true}] run playsound block.medium_amethyst_bud.break master @s ~ ~ ~ 1 0.8 1

#---不是創造---
execute as @s[gamemode = !creative] run return run tellraw @s[gamemode = !creative] ["",{"text":">> ","color":"gold"},{"text":"您沒有權限更動這項設定。請使用"},{"text":"創造模式","bold":true,"color":"gold"},{"text":"更改設定。"}]

#---攻擊/互動---
execute if entity @s[advancements = {settings:interact/mode = true}] run scoreboard players add 遊戲模式 menu 1
execute if entity @s[advancements = {settings:attack/mode = true}] run scoreboard players remove 遊戲模式 menu 1

#---超過範圍---
#---99998~99999---
execute if score 遊戲模式 menu matches 100000.. run scoreboard players set 遊戲模式 menu 99998
execute if score 遊戲模式 menu matches ..99997 run scoreboard players set 遊戲模式 menu 99999

#---結果---
execute if score 遊戲模式 menu matches 99999 as @e[tag = mode_value] run data modify entity @s text set value '{"text":"對戰","color":"#c24cdc","bold":true}'
execute if score 遊戲模式 menu matches 99999 run scoreboard players display numberformat 遊戲模式 menu fixed {"text":"對戰","color":"#c24cdc","bold":true}
execute if score 遊戲模式 menu matches 99999 run tellraw @a ["",{"text":">> ","color":"gold"},{"text":"對戰模式","bold":true,"color":"#a335bc"},{"text":"：雙方在時限內各自與敵方玩家對戰，以全隊分數決勝負。"}]
execute if score 遊戲模式 menu matches 99998 as @e[tag = mode_value] run data modify entity @s text set value '{"text":"捍衛","color":"#61ff9b","bold":true}'
execute if score 遊戲模式 menu matches 99998 run scoreboard players display numberformat 遊戲模式 menu fixed {"text":"捍衛","color":"#61ff9b","bold":true}
execute if score 遊戲模式 menu matches 99998 run tellraw @a ["",{"text":">> ","color":"gold"},{"text":"捍衛模式","bold":true,"color":"#61ff9b"},{"text":"：雙方在時限內盡可能待在對方陣地範圍，以全隊待在對方陣地時間總和決勝負。"}]

advancement revoke @s only settings:interact/mode
advancement revoke @s only settings:attack/mode