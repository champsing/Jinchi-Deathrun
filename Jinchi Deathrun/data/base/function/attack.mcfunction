#---無效狀態攻陣---
execute if entity @s[tag = invalid] run return run function duel:shock

#---保險起見---
execute if entity @n[tag = red_base, nbt = {Invulnerable:1b}] run return fail
execute if entity @n[tag = blue_base, nbt = {Invulnerable:1b}] run return fail

#---攻擊自己陣地---
execute if entity @s[team = red] as @a[team = red] run return run function base:friendly_fire
execute if entity @s[team = blue] as @a[team = blue] run return run function base:friendly_fire

tag @s add base_attack
execute if entity @s[team = red] as @n[tag = blue_base] run function base:team
execute if entity @s[team = blue] as @n[tag = red_base] run function base:team
tag @s remove base_attack
advancement revoke @s only base:attack