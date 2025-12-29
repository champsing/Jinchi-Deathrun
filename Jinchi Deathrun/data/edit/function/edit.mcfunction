scoreboard players set 操作模式 system 1

execute as @n[type = text_display ,tag = edit_title] run data modify entity @s text set value [{translate:"lobby.settings.exit_edit",color:"#61ff9b",bold:true}]
tellraw @a ["",{text:">> ",color:gold},{text:"已進入編輯模式"}]
tellraw @a ["",{text:">> ",color:gold},{text:"[ 使用教學? ]", color: aqua, underlined: true, click_event:{action: "open_url", url: "https://www.youtube.com/watch?v=RLFXnIPJuZY"}}]
scoreboard objectives setdisplay sidebar editinfo
execute as @e[type = armor_stand, tag = edit_amst] run data merge entity @s {Glowing:1b,CustomNameVisible:1b,Marker:0b,Invisible:0b}
function edit:give
schedule clear edit:actionbar
playsound ui.button.click ambient @p ~ ~ ~