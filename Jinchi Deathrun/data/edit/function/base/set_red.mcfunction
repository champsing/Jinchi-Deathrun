advancement revoke @s only edit:base/red
execute if score @s edit_cd matches 1.. run return fail
execute if score 紅隊陣地 editinfo matches 5 run return run tellraw @s ["",{text: ">> ", color: gold},{text: "您最多僅可設置5個紅隊陣地", color: red}]
scoreboard players add @s edit_cd 60
execute at @s run summon armor_stand ~ ~ ~ {DisabledSlots: 16191,Tags:['red_base','edit_amst'],CustomName:[{translate:"edit.function.base.set_red.1",color: red}],Team: red,CustomNameVisible: true, Glowing: true, NoGravity: true, NoBasePlate: true}
function edit:align
execute at @s unless score 紅隊陣地 editinfo matches 0 run tp @n[type = armor_stand, tag = red_base, tag = edit_amst] @s
playsound ui.button.click ambient @p ~ ~ ~
tellraw @s ["",{text: ">> ", color: gold},{text: "需3秒後才可設置下一個紅隊陣地", color: red}]