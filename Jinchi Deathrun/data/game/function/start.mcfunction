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
#---重置分數---
scoreboard players operation 紅隊分數 gameinfo = 初始分數 menu
scoreboard players operation 藍隊分數 gameinfo = 初始分數 menu
scoreboard players reset 準備階段 gamecore
scoreboard players reset 已準備人數 gameinfo
scoreboard players reset 初始分數 gameinfo

#---給大家大跑棒棒
give @a breeze_rod[custom_data= {adrenaline: true}, item_name= [{text:"§c§l腎上腺素",italic: false}], lore= [{text:"§7在主手時可獲得加速I效果。",italic: false},{text:"§c體力低於 30% 時不得使用。",italic: false}]]

#---放置陣地---
execute at @n[type = armor_stand, tag = red_base] align xz run summon block_display ~ ~2.5 ~ {block_state: {Name: "smooth_quartz"}, Glowing: true, Tags: ["red_base"],CustomName:[{text:"紅隊陣地",color: red}]}
execute at @n[type = armor_stand, tag = blue_base] align xz run summon block_display ~ ~2.5 ~ {block_state: {Name: "smooth_quartz"}, Glowing: true, Tags: ["blue_base"],CustomName:[{text:"藍隊陣地",color: blue}]}
execute at @n[type = armor_stand, tag = red_base] align xz run summon text_display ~ ~3.5 ~ {billboard: "center", Tags: ["red_base"], text:[{text:"紅隊陣地",color: red}]}
execute at @n[type = armor_stand, tag = blue_base] align xz run summon text_display ~ ~3.5 ~ {billboard: "center", Tags: ["blue_base"], text:[{text:"藍隊陣地",color: blue}]}
execute at @n[type = block_display, tag = red_base] align xz run summon interaction ~0.5 ~ ~0.5 {Tags: ["red_base"], height: 1.1, width: 1.1}
execute at @n[type = block_display, tag = blue_base] align xz run summon interaction ~0.5 ~ ~0.5 {Tags: ["blue_base"], height: 1.1, width: 1.1}
execute as @n[type = interaction, tag = red_base] at @s run tp @s ~ ~ ~ facing entity @n[tag = center]
execute as @n[type = interaction, tag = blue_base] at @s run tp @s ~ ~ ~ facing entity @n[tag = center]
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