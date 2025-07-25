# 有一方無限
# @s: 1. target 2. attacker
# at: Server

execute if entity @s[tag=infinity] run function duel:infinity/add
execute if entity @s[tag=!infinity] run function duel:infinity/minus

tag @s add invalid
scoreboard players add @s total_invalid 1