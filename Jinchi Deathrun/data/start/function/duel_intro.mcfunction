# >> 陣地大逃殺 對戰模式

#---給予反應---
execute positioned as @e[type = interaction, tag = duel_intro] run particle flash ~ ~ ~ 0.1 0.1 0.1 0.3 1 normal
playsound block.medium_amethyst_bud.break master @s ~ ~ ~ 1 0.8 1

tellraw @a ["",{"text":">> ","color":"gold"},{"text":"陣地","bold":true,"color":"gold"},{"text":"大逃殺","bold":true,"color":"red"},"   ",{"text":"對戰模式","bold":true,"color":"#a335bc"}]

advancement revoke @s only start:duel