scoreboard players set 操作模式 system 1

execute as @e[tag = edit_title] run data modify entity @s text set value '{"text":"退出編輯模式","color":"#61ff9b","bold":true}'
tellraw @a ["",{"text":">> ","color":"gold"},{"text":"已進入編輯模式"}]
scoreboard objectives setdisplay sidebar editinfo
execute as @e[type = armor_stand, tag = A_point] run data merge entity @s {Glowing:1b,CustomNameVisible:1b,Marker:0b}
execute as @e[type = armor_stand, tag = B_point] run data merge entity @s {Glowing:1b,CustomNameVisible:1b,Marker:0b}
playsound ui.button.click ambient @p ~ ~ ~