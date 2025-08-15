advancement revoke @s only edit:border/b
execute at @s if score B點 editinfo matches 0 run summon armor_stand ~ ~ ~ {DisabledSlots:16191,Tags:['B_point','edit_amst'],CustomName:[{text:"B點",color: green}],CustomNameVisible: true, Glowing: true, NoGravity: true, NoBasePlate: true}
execute at @s unless score B點 editinfo matches 0 run tp @n[type = armor_stand, tag = B_point] @s
playsound ui.button.click ambient @p ~ ~ ~
