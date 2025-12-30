execute as @e[type = armor_stand, tag = treasure_point] run data merge entity @s {Marker: 0b, Glowing:1b,CustomNameVisible:1b}
tellraw @a [{translate: jd.empty},{translate:"jd.console",color:gold},{text:"寶箱點位置已經揭示"}," ",{text: "[隱藏]", bold: true, color: green, underlined: true, click_event: {action: "run_command", command: "/function settings:treasure/hide"}}]
