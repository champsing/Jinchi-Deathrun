advancement revoke @s only edit:base/blue
execute if score @s edit_cd matches 1.. run return fail
scoreboard players add @s edit_cd 60
execute at @s run summon armor_stand ~ ~ ~ {DisabledSlots: 16191,Tags:['blue_base','edit_amst'],Team: blue,CustomName:[{text:"藍隊陣地",color: blue}],CustomNameVisible: true, Glowing: true, NoGravity: true, NoBasePlate: true}
function edit:align
playsound ui.button.click ambient @p ~ ~ ~
tellraw @s ["",{text: ">> ", color: gold},{text: "需3秒後才可設置下一個藍隊陣地", color: red}]