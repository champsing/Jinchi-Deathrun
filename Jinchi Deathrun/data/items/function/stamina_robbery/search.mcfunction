tag @s[tag = !items.stamina_robbery.robber] add items.stamina_robbery.robber
scoreboard players add @s front_distance 1
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[tag = !items.stamina_robbery.robber, dx = 0, dy = 0, dz = 0, team = !spec] run function items:stamina_robbery/rob
execute if score @s front_distance matches ..10 positioned ^ ^ ^1 run return run function items:stamina_robbery/search
execute if score @s front_distance matches 11.. run function items:stamina_robbery/stop_search