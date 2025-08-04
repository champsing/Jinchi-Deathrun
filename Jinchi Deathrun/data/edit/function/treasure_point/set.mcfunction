advancement revoke @s only edit:treasure_point/set
execute if score @s edit_cd matches 1.. run return fail
scoreboard players add @s edit_cd 60
execute at @s run summon armor_stand ~ ~ ~ {DisabledSlots:16191,Tags:['treasure_point','edit_amst'],CustomName:[{text:"寶箱點",color: dark_aqua, italic: true}],CustomNameVisible: true, Glowing: true, NoGravity: true, NoBasePlate: true}
playsound ui.button.click ambient @p ~ ~ ~
tellraw @s ["",{text: ">> ", color: gold},{text: "需3秒後才可設置下一個標記點", color: red}]