attribute @s jump_strength modifier add freeze -1 add_multiplied_base
attribute @s movement_speed modifier add freeze -1 add_multiplied_base
tag @s add frozen
scoreboard players add @s frozen 10
#---通知---
title @s times 10 100 20
title @s title {text: "凍結", color: blue}
title @s title {text: "你遭到凍結，目前無法移動和跳躍"}