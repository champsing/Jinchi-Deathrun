advancement revoke @s only edit:border/delete
execute if score @s edit_cd matches 1.. run return fail
scoreboard players add @s edit_cd 60
execute unless entity @e[tag = border] run playsound minecraft:entity.ghast.warn ambient @p ~ ~ ~
execute unless entity @e[tag = border] run return run tellraw @s ["",{text:">> ",color: gold},{text:"找不到可刪除的標記點",color: red},{text:", 請先指定"},{text:"A點或B點",color:gold}]
playsound entity.slime.death ambient @p ~ ~ ~
execute at @s as @n[type = armor_stand, tag = border] run kill
tellraw @s ["",{text:">> ",color: gold},{text:"需3秒後才可刪除下一個標記點",color: red}]