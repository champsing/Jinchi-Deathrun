advancement revoke @s only edit:base/red
execute at @s if score 紅隊陣地 editinfo matches 0 run summon armor_stand ~ ~ ~ {DisabledSlots: 16191,Tags:['red_base','edit_amst'],CustomName:[{text:"紅隊陣地",color: red}],CustomNameVisible: true, Glowing: true, NoGravity: true, NoBasePlate: true}
execute at @s unless score 紅隊陣地 editinfo matches 0 run tp @n[type = armor_stand, tag = red_base, tag = edit_amst] @s
playsound ui.button.click ambient @p ~ ~ ~