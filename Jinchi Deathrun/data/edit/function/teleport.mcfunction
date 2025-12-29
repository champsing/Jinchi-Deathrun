advancement revoke @s only edit:teleport
execute if score @s edit_cd matches 1.. run return fail
scoreboard players add @s edit_cd 60
execute unless entity @e[tag = edit_amst] run playsound minecraft:entity.ghast.warn ambient @p ~ ~ ~
execute unless entity @e[tag = edit_amst] run return run tellraw @s ["",{text:">> ",color: gold},{text:"找不到可傳送的標記盔甲座",color: red},{text:", 請先指定"},{text:"至少一個",color:gold},{text:"標記盔甲座"}]
playsound entity.slime.death ambient @p ~ ~ ~
tellraw @s ["",{text:"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",color:gold}]

tellraw @s ["",{text: ">> ", color: gold},{text: "傳送到：", bold: true}]
tellraw @s ["",{text: ">> ", color: gold},{text: "  ⫸ "},{text: "[ A點 ]", color: green, click_event: {action: "run_command", command: "/function edit:border/teleport_a"}}]
tellraw @s ["",{text: ">> ", color: gold},{text: "  ⫸ "},{text: "[ B點 ]", color: green, click_event: {action: "run_command", command: "/function edit:border/teleport_b"}}]
tellraw @s ["",{text: ">> ", color: gold},{text: "  ⫸ "},{text: "[ 中央點 ]", color: gray, click_event: {action: "run_command", command: "/function edit:center/teleport"}}]
tellraw @s ["",{text: ">> ", color: gold},{text: "  ⫸ "},{text: "[ 回大廳 ]", color: gray, click_event: {action: "run_command", command: "/tp @s @n[tag = jd.lobby]"}}]

tellraw @s ["",{text: ">> ", color: gold},{text: "需3秒後才可再開啟傳送表單", color: red}]