advancement revoke @s only base:attack

#---無效狀態攻陣---
execute if entity @s[tag = invalid] run return run function duel:shock

#---保險起見---
execute if entity @n[tag = red_base, tag = invulnerable] run return fail
execute if entity @n[tag = blue_base, tag = invulnerable] run return fail

execute if entity @s[team = red] as @n[tag = blue_base] run function base:team
execute if entity @s[team = blue] as @n[tag = red_base] run function base:team