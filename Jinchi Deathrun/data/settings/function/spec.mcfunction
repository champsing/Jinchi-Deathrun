#---不是大廳模式---
execute if entity @e[tag = lobby, scores = {mode = 1}] run return run tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"您目前處於編輯模式。請退出"},{"text":"編輯模式","bold":true,"color":"gold"},{"text":"再加入旁觀。"}]

#---給予反應---
execute positioned as @e[type = interaction, tag = team_interact] run particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.3 3 normal
execute if entity @s[advancements = {settings:interact/spec = true}] run playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ 1 0.7 1
execute if entity @s[advancements = {settings:attack/spec = true}] run playsound block.medium_amethyst_bud.break master @s ~ ~ ~ 1 0.8 1

#---加入觀察者---
execute if entity @s[advancements = {settings:interact/spec = true}] run team leave @s
execute if entity @s[advancements = {settings:attack/spec = true}] run team join spec @s

advancement revoke @s only settings:interact/spec
advancement revoke @s only settings:attack/spec