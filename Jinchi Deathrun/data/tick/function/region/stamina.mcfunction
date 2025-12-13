#---REGION：體力---
execute as @a[team = !spec] if predicate stamina:adrenaline run attribute @s movement_speed modifier add adrenaline 0.7 add_multiplied_total
execute as @a[team = !spec] unless predicate stamina:adrenaline run attribute @s movement_speed modifier remove adrenaline
execute as @a[team = !spec,scores = {stamina=..39}] run function stamina:effect
