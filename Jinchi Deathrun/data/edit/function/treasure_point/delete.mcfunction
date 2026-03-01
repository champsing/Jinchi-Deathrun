advancement revoke @s only edit:treasure_point/delete
execute if score @s edit_cd matches 1.. run return fail
scoreboard players add @s edit_cd 60
execute unless entity @e[tag = edit_amst] run playsound minecraft:entity.ghast.warn ambient @p ~ ~ ~
execute unless entity @e[tag = edit_amst] run return run tellraw @s [{translate: jd.empty},{translate:"jd.console",color: gold},{translate:jd.edit.function.treasure_point.delete.5_1,color: red},{translate:jd.edit.function.delete.5_2},{translate:jd.edit.function.delete.5_3,color:gold},{translate:jd.edit.function.treasure_point.delete.5_4}]
playsound entity.slime.death ambient @p ~ ~ ~
execute at @s run kill @n[tag = treasure_point, tag = edit_amst]
tellraw @s ["",{translate:jd.edit.function.config.5_1, color: gold},{translate:jd.edit.function.delete.9_2, color: red}]