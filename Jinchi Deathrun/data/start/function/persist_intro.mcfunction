# >> 陣地大逃殺 捍衛模式

#---給予反應---
execute positioned as @e[type = interaction, tag = persist_intro] run particle flash ~ ~ ~ 0.1 0.1 0.1 0.3 1 normal
playsound block.medium_amethyst_bud.break master @s ~ ~ ~ 1 0.8 1

tellraw @a [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.base.function.success.17_2,bold:true,color:gold},{translate:jd.game.function.prepare.emerald.22_2,bold:true,color:red},"   ",{translate:jd.edit.function.exit.8_1,bold:true,color:"#61ff9b"}]

advancement revoke @s only start:persist