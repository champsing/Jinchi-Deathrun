#加入遊戲
effect clear @s
effect give @s resistance infinite 100 true
effect give @s saturation infinite 0 true
effect give @s night_vision infinite 0 true
effect give @s weakness infinite 100 true
effect give @s blindness 3 0 true

gamemode adventure @s
title @s times 10 40 10
tp @s @e[type=area_effect_cloud,tag=lobby,limit=1]
execute at @e[type=area_effect_cloud,tag=lobby,limit=1] run spawnpoint @s ~ ~ ~

title @s title ["",{"text":"陣地","bold":true,"color":"gold"},{"text":"大逃殺","bold":true,"color":"red"}]
title @s subtitle ["",{"text":"作者: 惡靈","bold":true,"color":"green"}]

tag @s add join