#---不是大廳模式---
execute if score 操作模式 system matches 1 run return run tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"您目前處於編輯模式。請退出"},{"text":"編輯模式","bold":true,"color":"gold"},{"text":"更改設定。"}]
execute if score 操作模式 system matches 3 run return run tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"遊戲目前已經開始。請"},{"text":"結束遊戲","bold":true,"color":"gold"},{"text":"後再更改設定。"}]

#---給予反應---
execute positioned as @e[type = interaction, tag = initial_interact] run particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.3 3 normal
execute if entity @s[advancements = {settings:interact/initial = true}] run playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ 1 0.7 1
execute if entity @s[advancements = {settings:attack/initial = true}] run playsound block.medium_amethyst_bud.break master @s ~ ~ ~ 1 0.8 1

#---不是創造---
execute as @s[gamemode = !creative] run return run tellraw @s[gamemode = !creative] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"您沒有權限更動這項設定。請使用"},{"text":"創造模式","bold":true,"color":"gold"},{"text":"更改設定。"}]

#---攻擊/互動---
execute if entity @s[advancements = {settings:interact/initial = true}] run scoreboard players add 初始分數 menu 100
execute if entity @s[advancements = {settings:attack/initial = true}] run scoreboard players remove 初始分數 menu 100

#---超過範圍---
#---1000~2000---
execute if score 初始分數 menu matches 2100.. run scoreboard players set 初始分數 menu 1000
execute if score 初始分數 menu matches ..900 run scoreboard players set 初始分數 menu 2000

#---結果---
execute as @e[tag = initial_value] run data modify entity @s text set value '{"score":{"name":"初始分數","objective":"menu"}}'
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"初始分數設為 "},{"score":{"name":"初始分數","objective":"menu"},"bold":true,"color":"gold"}]

advancement revoke @s only settings:interact/initial
advancement revoke @s only settings:attack/initial