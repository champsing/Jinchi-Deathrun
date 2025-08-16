advancement revoke @s only edit:center
execute at @s if score 中央點 editinfo matches 0 run summon armor_stand ~ ~ ~ {DisabledSlots: 16191,Tags:['center','edit_amst'],CustomName:[{text:"中央點",color: gray}],CustomNameVisible: true, Glowing: true, NoGravity: true, NoBasePlate: true}
execute at @s unless score 中央點 editinfo matches 0 run tp @n[type = armor_stand, tag = center, tag = edit_amst] @s

# 陣地隨時看向中央點
execute as @n[type = armor_stand, tag = red_base, tag = edit_amst] at @s facing entity @n[tag = center] eyes run tp ~ ~ ~
execute as @n[type = armor_stand, tag = blue_base, tag = edit_amst] at @s facing entity @n[tag = center] eyes run tp ~ ~ ~

playsound ui.button.click ambient @p ~ ~ ~