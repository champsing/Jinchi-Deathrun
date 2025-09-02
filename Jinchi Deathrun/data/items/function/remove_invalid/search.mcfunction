tag @s[tag=!items.remove_invalid.remover] add items.remove_invalid.remover
scoreboard players add @s front_distance 1
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[tag=!items.remove_invalid.remover, dx = 0, dy = 0, dz = 0, team = !spec] run function items:stamina_robbery/rob
execute if score @s front_distance matches ..10 positioned ^ ^ ^1 run return run function items:remove_invalid/search
execute if score @s front_distance matches 11.. run function items:remove_invalid/stop_search