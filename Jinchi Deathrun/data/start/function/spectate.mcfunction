#---加入觀戰---
team join spec @s
gamemode spectator @s
effect give @s night_vision infinite 0 true
tp @s @n[tag = center]

scoreboard players enable @a[team = spec] join
tellraw @s ["",{translate:jd.start.function.spectate.8_1},{translate:jd.start.function.spectate.8_2},{translate:jd.start.function.spectate.8_3,click_event:{action:"run_command",command:"/trigger join set 1"}},{translate:jd.start.function.intro.13_5},{translate:jd.start.function.spectate.8_5,click_event:{action:"run_command",command:"/trigger join set 2"}}]

bossbar set countdown players @a
# bossbar set event players @a
tag @s add playing