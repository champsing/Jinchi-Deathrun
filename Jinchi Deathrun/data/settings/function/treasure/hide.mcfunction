execute as @e[type = armor_stand, tag = treasure_point] run data merge entity @s {Marker: 1b, Glowing: 0b,CustomNameVisible: 0b}
tellraw @a ["",{text:">> ",color:gold},{text:"寶箱點位置已經隱藏"}," ",{text: "[揭示]", bold: true, color: gold, underlined: true, click_event: {action: "run_command", command: "/function settings:treasure/show"}}]
