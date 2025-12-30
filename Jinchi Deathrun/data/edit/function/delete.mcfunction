advancement revoke @s only edit:delete
execute if score @s edit_cd matches 1.. run return fail
scoreboard players add @s edit_cd 60
execute unless entity @e[tag = edit_amst] run playsound minecraft:entity.ghast.warn ambient @p ~ ~ ~
execute unless entity @e[tag = edit_amst] run return run tellraw @s [{translate: jd.empty},{translate:"jd.console",color: gold},{text:"找不到可刪除的標記盔甲座",color: red},{text:", 請先指定"},{text:"至少一個",color:gold},{text:"標記盔甲座"}]
playsound entity.slime.death ambient @p ~ ~ ~
tellraw @s ["",{text: ">> ", color: gold},{text:"已刪除 「"},{selector: "@n[type = armor_stand, tag = edit_amst]", color: gold, bold: true},{text:"」"}]
execute at @s run kill @n[type = armor_stand, tag = edit_amst]
tellraw @s ["",{text: ">> ", color: gold},{text: "需3秒後才可刪除下一個標記點", color: red}]