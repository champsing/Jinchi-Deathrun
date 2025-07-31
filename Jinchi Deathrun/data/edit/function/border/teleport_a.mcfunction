advancement revoke @s only edit:border/teleport_a
execute unless entity @n[type= armor_stand, tag = A_point] if score @s edit_cd matches 1.. run return fail
scoreboard players add @s edit_cd 60
execute unless entity @n[type= armor_stand, tag = A_point] run playsound entity.ghast.warn ambient @p ~ ~ ~
execute unless entity @n[type= armor_stand, tag = A_point] run return run tellraw @s ["",{text:">> ",color: gold},{text:"無法傳送",color: red},{text:", 請先指定"},{text:"A點",color:gold}]
tp @s @n[type= armor_stand, tag = A_point]
playsound entity.enderman.teleport ambient @p ~ ~ ~