#tp @s @n[type = marker, tag = jd.lobby]
playsound block.medium_amethyst_bud.break master @s ~ ~ ~ 1 0.8 1
scoreboard objectives setdisplay sidebar menu
clear @a

execute as @n[type = text_display, tag = edit_title] run data modify entity @s text set value [{translate:"lobby.settings.enter_edit",color:"#ac75b9",bold:true}]
execute if score 遊戲模式 menu matches 99999 run tellraw @a [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.edit.function.exit.7_1,bold:true,color:"#ac75b9"},{translate:jd.edit.function.exit.7_2}]
execute if score 遊戲模式 menu matches 99998 run tellraw @a [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.edit.function.exit.8_1,bold:true,color:"#61ff9b"},{translate:jd.edit.function.exit.8_2}]
tellraw @a ""
tellraw @a [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.edit.function.exit.10_1, bold: true, color: light_purple, underlined: true, click_event: {action: "run_command", command: "/function edit:config"}}," ",{translate:jd.edit.function.exit.10_2, bold: true, color: dark_aqua, underlined: true, click_event: {action: "run_command", command: "/function settings:treasure/show"}}]
execute as @e[type = armor_stand, tag = edit_amst] run data merge entity @s {Glowing:0b,CustomNameVisible:0b,Marker:1b,Invisible:1b}
scoreboard players set 操作模式 system 2
function edit:actionbar