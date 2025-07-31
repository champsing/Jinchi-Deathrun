advancement revoke @s only edit:border/teleport_b
execute unless entity @n[tag = B_point] if score @s edit_cd matches 1.. run return fail
scoreboard players add @s edit_cd 60
execute unless entity @n[tag = B_point] run playsound entity.ghast.warn ambient @p ~ ~ ~
execute unless entity @n[tag = B_point] run return run tellraw @s ["",{text:">> ",color: gold},{text:"無法傳送",color: red},{text:", 請先指定"},{text:"B點",color:gold}]
tp @s @n[type= armor_stand, tag = B_point]
playsound entity.enderman.teleport ambient @p ~ ~ ~