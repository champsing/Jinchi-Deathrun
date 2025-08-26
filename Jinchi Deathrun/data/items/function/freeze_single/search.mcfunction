tag @s[tag=!items.freeze_single.user] add items.freeze_single.user
scoreboard players add @s front_distance 1
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[tag=!items.freeze_single.user, dx = 0, dy = 0, dz = 0, team = !spec] run function items:freeze_single/freeze
execute if score @s front_distance matches ..10 positioned ^ ^ ^1 run return run function items:freeze_single/search
execute if score @s front_distance matches 11.. run function items:freeze_single/stop_search