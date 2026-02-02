attribute @s jump_strength modifier add freeze -1 add_multiplied_base
attribute @s movement_speed modifier add freeze -1 add_multiplied_base
tag @s add frozen
scoreboard players add @s frozen 10
#---通知---
title @s times 10 100 20
title @s title {translate:jd.items.function.freeze.freeze.7_1, color: blue}
title @s subtitle {translate:jd.items.function.freeze.freeze.8_1}