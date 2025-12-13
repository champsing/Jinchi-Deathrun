execute if entity @s[tag = invalid] run return run function duel:shock/check
execute on attacker if entity @s[tag = invalid] run return run function duel:shock/check

execute if entity @s[tag = infinity] run return run function duel:infinity/attack
execute if entity @a[tag = attack, tag = infinity] run return run function duel:infinity/hurt

execute if predicate items:has_shield on attacker run return run function duel:shield