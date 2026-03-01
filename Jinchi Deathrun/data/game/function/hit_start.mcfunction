advancement revoke @s only game:start
execute positioned as @e[type = interaction, tag = start] run particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.3 3 normal
playsound block.medium_amethyst_bud.break master @s ~ ~ ~ 1 0.8 1

#---不是創造---
execute as @s[gamemode = !creative] run return run tellraw @s [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.game.function.hit_start.6_1},{translate:jd.edit.function.hit_edit.5_2,bold:true,color:gold},{translate:jd.game.function.hit_start.6_3}]

#---人數不足---
execute unless score 紅隊人數 menu matches 1.. run return run tellraw @s [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.game.function.hit_start.9_1},{translate:jd.game.function.hit_start.9_2,bold:true,color:gold},{translate:jd.game.function.hit_start.9_3}]
execute unless score 藍隊人數 menu matches 1.. run return run tellraw @s [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.game.function.hit_start.9_1},{translate:jd.game.function.hit_start.9_2,bold:true,color:gold},{translate:jd.game.function.hit_start.9_3}]

execute if score 操作模式 system matches 1 run return run tellraw @s [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.game.function.hit_start.12_1},{translate:jd.edit.function.check.1_2,bold:true,color:gold},{translate:jd.game.function.hit_start.12_3}]
execute if score 操作模式 system matches 3 run return run tellraw @s [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.edit.function.config.2_1},{translate:jd.edit.function.config.2_2,bold:true,color:gold},{translate:jd.game.function.hit_start.13_3}]

execute if score 操作模式 system matches 2 run function game:prepare/emerald