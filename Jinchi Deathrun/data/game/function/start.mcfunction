# 開始遊戲：這時玩家已經可以動了

#---效果---
clear @a
effect clear @a
effect give @a hunger 3 255 true
effect give @a resistance 3 200 true
effect give @a regeneration 15 100 true
effect give @a night_vision infinite 0 true

#---通知---
title @a title {"text":"START","bold":true,"color":"gold"}

#---給大家大跑棒棒
give @s breeze_rod[custom_data= {"adrenaline": true}, item_name= '{"text":"§c§l腎上腺素","italic": false}', lore= ['{"text":"§7在主手時可獲得加速I效果。","italic": false}','{"text":"§c體力低於 30% 時不得使用。","italic": false}']]

#---排程函數---
schedule function game:time 1s
schedule function items:treasure/generate_treasure 30s
schedule function stamina:regain 10s
# schedule function event:start 600s

#---生分數物品---
execute at @n[tag = center] run function items:treasure/generate_point_treasure