# 加入遊戲
effect clear @s
effect give @s resistance infinite 100 true
effect give @s saturation infinite 0 true
effect give @s night_vision infinite 0 true
effect give @s weakness infinite 100 true
effect give @s blindness 3 0 true

gamemode adventure @s
title @s times 10 40 10
tp @s @n[type = marker,tag = jd.lobby]
execute at @n[type = marker,tag = jd.lobby] run spawnpoint @s ~ ~ ~

title @s title ["",{translate:jd.base.function.success.17_2,bold:true,color:gold},{translate:jd.game.function.prepare.emerald.22_2,bold:true,color:red}]
title @s subtitle ["",{translate:jd.start.function.join.15_1,bold:true,color:"green"}]

tag @s add join