scoreboard players add @a[team=!spec, predicate=!stamina:is_running_mode] stamina 1
scoreboard players set @a[scores={stamina=99..}] stamina 100
schedule function stamina:regain 1s