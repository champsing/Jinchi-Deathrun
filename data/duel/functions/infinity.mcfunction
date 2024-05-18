execute if entity @s[tag=infinity] run function duel:infinity/add
execute if entity @a[tag=attack,limit=1,tag=infinity] run function duel:infinity/add

execute if entity @s[tag=!infinity] run function duel:infinity/minus
execute if entity @a[tag=attack,limit=1,tag=!infinity] run function duel:infinity/minus

tag @s add invalid
tag @a[tag=attack,limit=1] add invalid