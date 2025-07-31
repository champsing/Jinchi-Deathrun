advancement revoke @s only edit:treasure_point/set
execute at @s if score 寶箱點數量 editinfo matches 0 run summon armor_stand ~ ~ ~ {DisabledSlots: 16191,Tags:['treasure_point','edit_amst'],CustomName:[{text:"寶箱點",color: dark_aqua, italic: true}],CustomNameVisible: true, Glowing: true, NoGravity: true, NoBasePlate: true}
playsound ui.button.click ambient @p ~ ~ ~