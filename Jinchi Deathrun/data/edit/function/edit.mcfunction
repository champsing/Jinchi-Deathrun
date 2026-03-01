scoreboard players set 操作模式 system 1

execute as @n[type = text_display ,tag = edit_title] run data modify entity @s text set value [{translate:"jd.lobby.settings.exit_edit",color:"#61ff9b",bold:true}]
tellraw @a [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.edit.function.edit.4_1}]
tellraw @a [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.edit.function.edit.5_1, color: aqua, underlined: true, click_event:{action: "open_url", url: "https://www.youtube.com/watch?v=RLFXnIPJuZY"}}]
scoreboard objectives setdisplay sidebar editinfo
execute as @e[type = armor_stand, tag = edit_amst] run data merge entity @s {Glowing:1b,CustomNameVisible:1b,Marker:0b,Invisible:0b}
function edit:give
schedule clear edit:actionbar
playsound ui.button.click ambient @p ~ ~ ~