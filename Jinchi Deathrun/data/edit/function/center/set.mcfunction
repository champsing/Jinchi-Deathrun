advancement revoke @s only edit:center
execute at @s if score 中央點 editinfo matches 0 run summon armor_stand ~ ~ ~ {DisabledSlots: 16191,Tags:['center','edit_amst'],CustomName:[{text:"中央點",color: gray}],CustomNameVisible: true, Glowing: true, NoGravity: true, NoBasePlate: true}
execute at @s unless score 中央點 editinfo matches 0 run tp @n[type = armor_stand, tag = center, tag = edit_amst] @s
function edit:align
playsound ui.button.click ambient @p ~ ~ ~