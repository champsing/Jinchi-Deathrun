#---給予反應---
execute positioned as @e[type = interaction, tag = team_interact] run particle flash ~ ~ ~ 0.1 0.1 0.1 0.3 1 normal
playsound block.medium_amethyst_bud.break master @s ~ ~ ~ 1 0.8 1

#---不是創造---
execute as @s[gamemode = !creative] run return run tellraw @s[gamemode = !creative] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"您沒有權限分隊。請使用"},{"text":"創造模式","bold":true,"color":"gold"},{"text":"執行隨機分隊。"}]

#---隨機分隊---
team join red @r[team=]
team join blue @r[team=]
execute if entity @a[team=] run function settings:team

advancement revoke @s only settings:attack/team