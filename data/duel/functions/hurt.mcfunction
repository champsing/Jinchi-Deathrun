tag @s add hurt
execute on attacker run tag @s add attack

execute as @a[predicate=duel:infinity] run function duel:shock
execute if entity @a[predicate=duel:infinity] run function duel:infinity
execute if entity @s[tag=!invalid,tag=!inifnity] if entity @a[tag=attack,tag=!invalid,tag=!inifnity] run function duel:success

tag @s remove hurt
tag @a[tag=attack] remove attack
advancement revoke @s only duel:hurt