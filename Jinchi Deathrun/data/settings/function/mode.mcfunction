# 99999 對戰 99998 捍衛

#---先return 還沒新增，新增後可以刪除---
advancement revoke @s only settings:interact/mode
advancement revoke @s only settings:attack/mode
return run tellraw @s [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.settings.function.mode.6_1,color: red}]

#---不是大廳模式---
execute if score 操作模式 system matches 1 run return run tellraw @s [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.game.function.hit_start.12_1},{translate:jd.edit.function.check.1_2,bold:true,color:gold},{translate:jd.settings.function.initial.2_3}]
execute if score 操作模式 system matches 3 run return run tellraw @s [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.edit.function.config.2_1},{translate:jd.edit.function.config.2_2,bold:true,color:gold},{translate:jd.settings.function.initial.3_3}]

#---給予反應---
execute positioned as @e[type = interaction, tag = mode_interact] run particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.3 3 normal
execute if entity @s[advancements = {settings:interact/mode = true}] run playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ 1 0.7 1
execute if entity @s[advancements = {settings:attack/mode = true}] run playsound block.medium_amethyst_bud.break master @s ~ ~ ~ 1 0.8 1

#---不是創造---
execute as @s[gamemode = !creative] run return run tellraw @s[gamemode = !creative] [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.settings.function.initial.11_1},{translate:jd.edit.function.hit_edit.5_2,bold:true,color:gold},{translate:jd.settings.function.initial.2_3}]

#---攻擊/互動---
execute if entity @s[advancements = {settings:interact/mode = true}] run scoreboard players add 遊戲模式 menu 1
execute if entity @s[advancements = {settings:attack/mode = true}] run scoreboard players remove 遊戲模式 menu 1

#---超過範圍---
#---99998~99999---
execute if score 遊戲模式 menu matches 100000.. run scoreboard players set 遊戲模式 menu 99998
execute if score 遊戲模式 menu matches ..99997 run scoreboard players set 遊戲模式 menu 99999

#---結果---
execute if score 遊戲模式 menu matches 99999 as @e[tag = mode_value] run data modify entity @s text set value [{translate:jd.settings.function.mode.30_1,color:"#c24cdc",bold:true}]
execute if score 遊戲模式 menu matches 99999 run scoreboard players display numberformat 遊戲模式 menu fixed {translate:jd.settings.function.mode.30_1,color:"#c24cdc",bold:true}
execute if score 遊戲模式 menu matches 99999 run tellraw @a [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.edit.function.exit.7_1,bold:true,color:"#a335bc"},{translate:jd.edit.function.exit.7_2}]
execute if score 遊戲模式 menu matches 99998 as @e[tag = mode_value] run data modify entity @s text set value [{translate:jd.settings.function.mode.33_1,color:"#61ff9b",bold:true}]
execute if score 遊戲模式 menu matches 99998 run scoreboard players display numberformat 遊戲模式 menu fixed {translate:jd.settings.function.mode.33_1,color:"#61ff9b",bold:true}
execute if score 遊戲模式 menu matches 99998 run tellraw @a [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.edit.function.exit.8_1,bold:true,color:"#61ff9b"},{translate:jd.edit.function.exit.8_2}]

advancement revoke @s only settings:interact/mode
advancement revoke @s only settings:attack/mode