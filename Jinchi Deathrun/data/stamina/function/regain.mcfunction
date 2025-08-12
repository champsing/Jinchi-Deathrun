execute unless predicate stamina:is_sneaking unless predicate stamina:is_running_mode run scoreboard players add @a[team = !spec] stamina 1
execute if predicate stamina:is_sneaking unless predicate stamina:is_running_mode run scoreboard players add @a[team = !spec] stamina 2
scoreboard players set @a[scores = {stamina=99..}] stamina 100
schedule function stamina:regain 1s