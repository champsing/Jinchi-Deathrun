advancement revoke @s only edit:base/set_blue
execute at @s if score 藍隊陣地 editinfo matches 0 run summon armor_stand ~ ~ ~ {DisabledSlots: 16191,Tags:['blue_base','edit_amst'],CustomName:[{text:"藍隊陣地",color: blue}],CustomNameVisible: true, Glowing: true, NoGravity: true, NoBasePlate: true}
execute at @s unless score 藍隊陣地 editinfo matches 0 run tp @n[type= armor_stand, tag = blue_base, tag = edit_amst] @s
playsound ui.button.click ambient @p ~ ~ ~