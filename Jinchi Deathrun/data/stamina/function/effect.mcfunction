scoreboard players set @s[scores = {stamina=..-1}] stamina 0

execute unless predicate items:speed_2 if predicate stamina:stamina_under_30 run effect clear @s speed

execute if score @s stamina matches 30..39 run return run effect give @s slowness 1 0 true

execute if score @s stamina matches 20..29 run return run effect give @s slowness 1 1 true

execute if score @s stamina matches 10..19 run return run effect give @s slowness 1 2 true

effect give @s[scores = {stamina=0..9}] weakness 1 99 true
execute if score @s stamina matches 0..9 run return run effect give @s slowness 1 3 true