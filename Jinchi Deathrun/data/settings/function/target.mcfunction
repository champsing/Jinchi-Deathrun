#---不是大廳模式---
execute if score 操作模式 system matches 1 run return run tellraw @s [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.game.function.hit_start.12_1},{translate:jd.edit.function.check.1_2,bold:true,color:gold},{translate:jd.settings.function.initial.2_3}]
execute if score 操作模式 system matches 3 run return run tellraw @s [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.edit.function.config.2_1},{translate:jd.edit.function.config.2_2,bold:true,color:gold},{translate:jd.settings.function.initial.3_3}]

#---給予反應---
execute positioned as @e[type = interaction, tag = target_interact] run particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.3 3 normal
execute if entity @s[advancements = {settings:interact/target = true}] run playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ 1 0.7 1
execute if entity @s[advancements = {settings:attack/target = true}] run playsound block.medium_amethyst_bud.break master @s ~ ~ ~ 1 0.8 1

#---不是創造---
execute as @s[gamemode = !creative] run return run tellraw @s [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.settings.function.initial.11_1},{translate:jd.edit.function.hit_edit.5_2,bold:true,color:gold},{translate:jd.settings.function.initial.2_3}]

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
execute if score 目標分數 menu matches 3000..10000 run scoreboard players display numberformat 目標分數 menu styled {color:red,bold: false}
execute if score 目標分數 menu matches 3000..10000 as @e[tag = target_value] run data modify entity @s text set value [{score:{name:"目標分數",objective:"menu"},color: "white"}]
execute if score 目標分數 menu matches 3000..10000 run tellraw @a [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.settings.function.target.28_1},{score:{name:"目標分數",objective:"menu"},bold:true,color:gold}]
execute if score 目標分數 menu matches -1 run scoreboard players display numberformat 目標分數 menu fixed {translate:jd.settings.function.target.29_1,color: "dark_red",bold: true}
execute if score 目標分數 menu matches -1 run tellraw @a [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.settings.function.target.28_1},{translate:jd.settings.function.target.29_1,color: "dark_red",bold: true}]
execute if score 目標分數 menu matches -1 as @e[tag = target_value] run data modify entity @s text set value [{translate:jd.settings.function.target.29_1,color: "dark_red",bold: true}]

#---無限提示---
execute if score 目標分數 menu matches -1 run tellraw @s ["",{translate:jd.edit.function.config.5_1,color: gold},{translate:jd.settings.function.target.34_2},{translate:jd.settings.function.target.34_3},{translate:jd.settings.function.target.34_4,color:aqua,hover_event: {action: "show_text", value: "點擊複製指令"}, click_event: {action: "copy_to_clipboard", value: "/function game:force_end"}}]

advancement revoke @s only settings:interact/target
advancement revoke @s only settings:attack/target