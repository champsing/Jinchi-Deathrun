execute at @s if score B點 editinfo matches 0 run summon armor_stand ~ ~ ~ {Tags:['B_point','border'],CustomName:'{"text":"B點","color": "blue"}',CustomNameVisible: true, Glowing: true} 
execute at @s unless score B點 editinfo matches 0 run tp @e[type= armor_stand, tag = B_point] @s
playsound ui.button.click ambient @p ~ ~ ~