execute as @a[team = !spec] unless predicate stamina:is_sneaking unless predicate stamina:is_running_mode run scoreboard players add @s stamina 1
execute as @a[team = !spec] if predicate stamina:is_sneaking unless predicate stamina:is_running_mode run scoreboard players add @s stamina 2
scoreboard players set @a[scores = {stamina=99..}] stamina 100
schedule function stamina:regain 1s