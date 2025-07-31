advancement revoke @s only edit:border/set_a
execute at @s if score A點 editinfo matches 0 run summon armor_stand ~ ~ ~ {DisabledSlots: 16191,Tags:['A_point','edit_amst'],CustomName:[{text:"A點",color: red}],CustomNameVisible: true, Glowing: true, NoGravity: true, NoBasePlate: true}
execute at @s unless score A點 editinfo matches 0 run tp @n[type= armor_stand, tag = A_point] @s
playsound ui.button.click ambient @p ~ ~ ~
