#---不是大廳模式---
execute if score 操作模式 system matches 1 run return run tellraw @s [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.game.function.hit_start.12_1},{translate:jd.edit.function.check.1_2,bold:true,color:gold},{translate:jd.settings.function.team.2_3}]
execute if score 操作模式 system matches 3 run return run tellraw @s [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.edit.function.config.2_1},{translate:jd.edit.function.config.2_2,bold:true,color:gold},{translate:jd.settings.function.team.3_3}]

#---給予反應---
execute positioned as @e[type = interaction, tag = team_interact] run particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.3 3 normal
playsound block.medium_amethyst_bud.break master @s ~ ~ ~ 1 0.8 1

#---不是創造---
execute as @s[gamemode = !creative] run return run tellraw @s[gamemode = !creative] [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.settings.function.team.10_1},{translate:jd.edit.function.hit_edit.5_2,bold:true,color:gold},{translate:jd.settings.function.team.10_3}]

#---隨機分隊---
team leave @a[team = !spec]
execute if entity @a[team = ] run function settings:team_random

advancement revoke @s only settings:attack/team