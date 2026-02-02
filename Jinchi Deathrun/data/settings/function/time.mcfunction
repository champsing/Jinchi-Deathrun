#---不是大廳模式---
execute if score 操作模式 system matches 1 run return run tellraw @s [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.game.function.hit_start.12_1},{translate:jd.edit.function.check.1_2,bold:true,color:gold},{translate:jd.settings.function.initial.2_3}]
execute if score 操作模式 system matches 3 run return run tellraw @s [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.edit.function.config.2_1},{translate:jd.edit.function.config.2_2,bold:true,color:gold},{translate:jd.settings.function.initial.3_3}]

#---給予反應---
execute positioned as @e[type = interaction, tag = time_interact] run particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.3 3 normal
execute if entity @s[advancements = {settings:interact/time = true}] run playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ 1 0.7 1
execute if entity @s[advancements = {settings:attack/time = true}] run playsound block.medium_amethyst_bud.break master @s ~ ~ ~ 1 0.8 1

#---不是創造---
execute as @s[gamemode = !creative] run return run tellraw @s[gamemode = !creative] [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.settings.function.initial.11_1},{translate:jd.edit.function.hit_edit.5_2,bold:true,color:gold},{translate:jd.settings.function.initial.2_3}]

#---攻擊/互動---
#---單位: 秒---
execute if entity @s[advancements = {settings:interact/time = true}] run scoreboard players add 遊戲時間 menu 300
execute if entity @s[advancements = {settings:attack/time = true}] run scoreboard players remove 遊戲時間 menu 300

#---超過範圍---
# min 10分鐘 max 1小時
execute if score 遊戲時間 menu matches 3900.. run scoreboard players set 遊戲時間 menu 600
execute if score 遊戲時間 menu matches ..300 run scoreboard players set 遊戲時間 menu 3600
scoreboard players operation 遊戲時間分鐘 system = 遊戲時間 menu
scoreboard players operation 遊戲時間分鐘 system /= 一分鐘 readonly
#---結果---
execute as @e[tag = time_value] run data modify entity @s text set value [{score:{name:"遊戲時間分鐘",objective:"system"}},{translate:"jd.lobby.settings.time_value.0"}]
tellraw @a [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.settings.function.time.26_1},{score:{name:"遊戲時間分鐘",objective:"system"},bold:true,color:gold},{translate:"jd.lobby.settings.time_value.0"}]

advancement revoke @s only settings:interact/time
advancement revoke @s only settings:attack/time