execute unless entity @n[type = armor_stand, tag = center, tag = edit_amst] if score @s edit_cd matches 1.. run return fail
scoreboard players add @s edit_cd 60
execute unless entity @n[type = armor_stand, tag = center, tag = edit_amst] run playsound entity.ghast.warn ambient @p ~ ~ ~
execute unless entity @n[type = armor_stand, tag = center, tag = edit_amst] run return run tellraw @s [{translate: jd.empty},{translate:"jd.console",color: gold},{text:"無法傳送",color: red},{text:", 請先指定"},{translate: "edit.function.center.set.0",color:gold}]
tp @s @n[type = armor_stand, tag = center, tag = edit_amst]
playsound entity.enderman.teleport ambient @p ~ ~ ~