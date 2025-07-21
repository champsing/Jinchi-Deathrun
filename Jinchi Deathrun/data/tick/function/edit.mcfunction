execute as @a[tag=!join] run function start:join
execute as @a[scores = {death = 1}] run function start:death
execute store result score A點 editinfo if entity @e[tag = A_point]
execute store result score B點 editinfo if entity @e[tag = B_point]
execute store result score 寶箱點數量 editinfo if entity @e[tag = treasure_point]
execute if score A點 editinfo matches 0 run scoreboard players display numberformat A點 editinfo fixed {"text":"未設定","bold": true, "color": "dark_red"}
execute if score B點 editinfo matches 0 run scoreboard players display numberformat B點 editinfo fixed {"text":"未設定","bold": true, "color": "dark_red"}
execute if score A點 editinfo matches 1 run scoreboard players display numberformat A點 editinfo fixed {"text":"已設定", "color": "green"}
execute if score B點 editinfo matches 1 run scoreboard players display numberformat B點 editinfo fixed {"text":"已設定", "color": "green"}
execute as @a if score @s edit_cd matches 1.. run scoreboard players remove @s edit_cd 1
#---這時候任何人都不該操作設定、開始遊戲---
advancement revoke @a from settings:root

#---這時候非創造模式的玩家不應該退出編輯模式---
advancement revoke @a[gamemode = !creative] only edit:edit

#---編輯 粒子效果高亮---
execute at @e[tag = edit, type = interaction] run particle dust{color: [0.65,0.0,0.78], scale: 1.0} ~ ~ ~ 0.3 0.3 0.3 0.1 12 normal

# execute as @e[type = armor_stand, tag = treasure_point, tag = !edited] at @s run function edit:modify
# execute as @e[type = armor_stand, tag = treasure_point, tag = edited] at @s run function edit:edited