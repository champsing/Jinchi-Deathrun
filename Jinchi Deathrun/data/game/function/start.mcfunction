# 開始遊戲：這時玩家已經可以動了

#---效果---
clear @a
effect clear @a
effect give @a resistance 3 200 true
effect give @a regeneration 15 100 true
effect give @a night_vision infinite 0 true
execute as @a run attribute @s jump_strength modifier remove countdown
execute as @a run attribute @s movement_speed modifier remove countdown

#---通知---
title @a title {text:"START",bold:true,color:gold}

#---重置時鐘---
scoreboard players operation 剩餘時間 gameinfo = 遊戲時間 menu

#---給大家大跑棒棒
give @a breeze_rod[custom_data= {adrenaline: true}, item_name= [{text:"§c§l腎上腺素",italic: false}], lore= [{text:"§7在主手時可獲得加速I效果。",italic: false},{text:"§c體力低於 30% 時不得使用。",italic: false}]]

#---放置陣地---
execute at @n[type = armor_stand, tag = red_base] align xz run summon block_display ~ ~3 ~ {block_state: {Name: "smooth_quartz"}, Glowing: true, Tags: ["red_base_bd"],CustomName:[{text:"紅隊陣地",color: red}],CustomNameVisible: true}
execute at @n[type = armor_stand, tag = blue_base] align xz run summon block_display ~ ~3 ~ {block_state: {Name: "smooth_quartz"}, Glowing: true, Tags: ["blue_base_bd"],CustomName:[{text:"藍隊陣地",color: blue}],CustomNameVisible: true}
execute at @n[type = armor_stand, tag = red_base] run summon interaction ~ ~3 ~ {Tags: ["red_base"]}
execute at @n[type = armor_stand, tag = blue_base] run summon interaction ~ ~3 ~ {Tags: ["blue_base"]}
team join red @n[type = block_display, tag = red_base]
team join blue @n[type = block_display, tag = blue_base]

#---排程函數---
schedule function game:time 1s
schedule function items:treasure/generate_treasure 30s
schedule function stamina:regain 5s
scoreboard players reset 準備階段 gamecore
# schedule function event:start 600s

#---生分數物品---
execute at @n[tag = center] run function items:treasure/generate_point_treasure