#---無效狀態攻陣---
execute if entity @s[tag = invalid] run function duel:shock

#---保險起見---
execute on target if entity @s[nbt={Invulnerable:1b}] run return fail

tag @s add base_attack
execute on target run function base:team
tag @s remove base_attack
advancement revoke @s only base:attack