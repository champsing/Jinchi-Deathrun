advancement revoke @s only edit:teleport
execute if score @s edit_cd matches 1.. run return fail
scoreboard players add @s edit_cd 60
execute unless entity @e[tag = edit_amst] run playsound minecraft:entity.ghast.warn ambient @p ~ ~ ~
execute unless entity @e[tag = edit_amst] run return run tellraw @s [{translate: jd.empty},{translate:"jd.console",color: gold},{translate:jd.edit.function.teleport.5_1,color: red},{translate:jd.edit.function.delete.5_2},{translate:jd.edit.function.delete.5_3,color:gold},{translate:jd.edit.function.delete.5_4}]
playsound entity.slime.death ambient @p ~ ~ ~
tellraw @s ["",{translate:jd.clear_chat,color:gold}]

tellraw @s ["",{translate:jd.edit.function.config.5_1, color: gold},{translate:jd.edit.function.teleport.9_2, bold: true}]
tellraw @s ["",{translate:jd.edit.function.config.5_1, color: gold},{translate:jd.edit.function.config.6_2},{translate:jd.edit.function.config.12_3, color: green, click_event: {action: "run_command", command: "/function edit:border/teleport_a"}}]
tellraw @s ["",{translate:jd.edit.function.config.5_1, color: gold},{translate:jd.edit.function.config.6_2},{translate:jd.edit.function.config.14_3, color: green, click_event: {action: "run_command", command: "/function edit:border/teleport_b"}}]
tellraw @s ["",{translate:jd.edit.function.config.5_1, color: gold},{translate:jd.edit.function.config.6_2},{translate:jd.edit.function.config.16_3, color: gray, click_event: {action: "run_command", command: "/function edit:center/teleport"}}]
tellraw @s ["",{translate:jd.edit.function.config.5_1, color: gold},{translate:jd.edit.function.config.6_2},{translate:jd.edit.function.teleport.13_3, color: gray, click_event: {action: "run_command", command: "/tp @s @n[tag = jd.lobby]"}}]

tellraw @s ["",{translate:jd.edit.function.config.5_1, color: gold},{translate:jd.edit.function.teleport.15_2, color: red}]