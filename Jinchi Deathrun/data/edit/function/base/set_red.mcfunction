advancement revoke @s only edit:base/red
execute if score @s edit_cd matches 1.. run return fail
scoreboard players add @s edit_cd 60
execute at @s if score 紅隊陣地 editinfo matches 0 run summon armor_stand ~ ~ ~ {DisabledSlots: 16191,Tags:['red_base','edit_amst'],CustomName:[{text:"紅隊陣地",color: red}],CustomNameVisible: true, Glowing: true, NoGravity: true, NoBasePlate: true}
execute at @s unless score 紅隊陣地 editinfo matches 0 run tp @n[type = armor_stand, tag = red_base, tag = edit_amst] @s
playsound ui.button.click ambient @p ~ ~ ~
tellraw @s ["",{text: ">> ", color: gold},{text: "需3秒後才可設置下一個紅隊陣地", color: red}]