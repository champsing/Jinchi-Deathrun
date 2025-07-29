scoreboard players set @s[scores={stamina=..-1}] stamina 0

execute unless predicate items:speed_2 if predicate stamina:stamina_under_30 run effect clear @s speed

effect give @s[scores={stamina=30..39}] slowness 1 0 true
effect give @s[scores={stamina=20..29}] slowness 1 1 true
effect give @s[scores={stamina=10..19}] slowness 1 2 true
effect give @s[scores={stamina=0..9}] slowness 1 3 true

effect give @s[scores={stamina=20..29}] nausea 1 0 true
effect give @s[scores={stamina=10..19}] nausea 1 1 true
effect give @s[scores={stamina=0..9}] nausea 1 2 true

effect give @s[scores={stamina=6..10}] wither 2 0 true
effect give @s[scores={stamina=1..5}] wither 2 1 true
effect give @s[scores={stamina=0}] wither 2 2 true