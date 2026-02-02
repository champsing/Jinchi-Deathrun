#---不是大廳模式---
execute if score 操作模式 system matches 1 run return run tellraw @s [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.game.function.hit_start.12_1},{translate:jd.edit.function.check.1_2,bold:true,color:gold},{translate:jd.settings.function.initial.2_3}]
execute if score 操作模式 system matches 3 run return run tellraw @s [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.edit.function.config.2_1},{translate:jd.edit.function.config.2_2,bold:true,color:gold},{translate:jd.settings.function.initial.3_3}]

#---給予反應---
execute positioned as @e[type = interaction, tag = initial_interaction] run particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.3 3 normal
execute if entity @s[advancements = {settings:interact/initial = true}] run playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ 1 0.7 1
execute if entity @s[advancements = {settings:attack/initial = true}] run playsound block.medium_amethyst_bud.break master @s ~ ~ ~ 1 0.8 1

#---不是創造---
execute as @s[gamemode = !creative] run return run tellraw @s[gamemode = !creative] [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.settings.function.initial.11_1},{translate:jd.edit.function.hit_edit.5_2,bold:true,color:gold},{translate:jd.settings.function.initial.2_3}]

#---攻擊/互動---
execute if entity @s[advancements = {settings:interact/initial = true}] run scoreboard players add 初始分數 menu 100
execute if entity @s[advancements = {settings:attack/initial = true}] run scoreboard players remove 初始分數 menu 100

#---超過範圍---
#---1000~2000---
execute if score 初始分數 menu matches 2100.. run scoreboard players set 初始分數 menu 1000
execute if score 初始分數 menu matches ..900 run scoreboard players set 初始分數 menu 2000

#---結果---
execute as @e[tag = initial_value] run data modify entity @s text set value [{score:{name:"初始分數",objective:"menu"}}]
tellraw @a [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.settings.function.initial.24_1},{score:{name:"初始分數",objective:"menu"},bold:true,color:gold}]

advancement revoke @s only settings:interact/initial
advancement revoke @s only settings:attack/initial