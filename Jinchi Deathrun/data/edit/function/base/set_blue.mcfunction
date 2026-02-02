advancement revoke @s only edit:base/blue
execute if score @s edit_cd matches 1.. run return fail
execute if score 藍隊陣地 editinfo matches 5 run return run tellraw @s ["",{translate:jd.edit.function.config.5_1, color: gold},{translate:jd.edit.function.base.set_blue.3_2, color: red}]
scoreboard players add @s edit_cd 60
execute at @s run summon armor_stand ~ ~ ~ {DisabledSlots: 16191,Tags:['blue_base','edit_amst'],Team: blue_base,CustomName:[{translate: "edit.function.base.set_blue.1",color: blue}],CustomNameVisible: true, Glowing: true, NoGravity: true, NoBasePlate: true}
function edit:align
playsound ui.button.click ambient @p ~ ~ ~
tellraw @s ["",{translate:jd.edit.function.config.5_1, color: gold},{translate:jd.edit.function.base.set_blue.8_2, color: red}]
