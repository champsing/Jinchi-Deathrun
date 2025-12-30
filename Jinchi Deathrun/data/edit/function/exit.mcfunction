#tp @s @n[type = marker, tag = jd.lobby]
playsound block.medium_amethyst_bud.break master @s ~ ~ ~ 1 0.8 1
scoreboard objectives setdisplay sidebar menu
clear @a

execute as @n[type = text_display, tag = edit_title] run data modify entity @s text set value [{translate:"lobby.settings.enter_edit",color:"#ac75b9",bold:true}]
execute if score 遊戲模式 menu matches 99999 run tellraw @a [{translate: jd.empty},{translate:"jd.console",color:gold},{text:"對戰模式",bold:true,color:"#ac75b9"},{text:"：雙方在時限內各自與敵方玩家對戰，以全隊分數決勝負。"}]
execute if score 遊戲模式 menu matches 99998 run tellraw @a [{translate: jd.empty},{translate:"jd.console",color:gold},{text:"捍衛模式",bold:true,color:"#61ff9b"},{text:"：雙方在時限內盡可能待在對方陣地範圍，以全隊待在對方陣地時間總和決勝負。"}]
tellraw @a ""
tellraw @a [{translate: jd.empty},{translate:"jd.console",color:gold},{text: "[檢視場地配置]", bold: true, color: light_purple, underlined: true, click_event: {action: "run_command", command: "/function edit:config"}}," ",{text: "[檢視寶箱點位置]", bold: true, color: dark_aqua, underlined: true, click_event: {action: "run_command", command: "/function settings:treasure/show"}}]
execute as @e[type = armor_stand, tag = edit_amst] run data merge entity @s {Glowing:0b,CustomNameVisible:0b,Marker:1b,Invisible:1b}
scoreboard players set 操作模式 system 2
function edit:actionbar