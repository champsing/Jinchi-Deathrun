execute unless entity @n[type = armor_stand, tag = B_point] if score @s edit_cd matches 1.. run return fail
scoreboard players add @s edit_cd 60
execute unless entity @n[type = armor_stand, tag = B_point] run playsound entity.ghast.warn ambient @p ~ ~ ~
execute unless entity @n[type = armor_stand, tag = B_point] run return run tellraw @s [{translate: jd.empty},{translate:"jd.console",color: gold},{translate:jd.edit.function.border.teleport_a.4_1,color: red},{translate:jd.edit.function.delete.5_2},{translate: "edit.function.border.set_b.0",color:gold}]
tp @s @n[type =  armor_stand, tag = B_point]
playsound entity.enderman.teleport ambient @p ~ ~ ~