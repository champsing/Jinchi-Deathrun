#---無效狀態攻陣---
execute if entity @s[tag = invalid] run return run function duel:shock

#---保險起見---
execute if entity @s[team = red, advancements = {base:attack_blue = true}] if entity @n[tag = blue_base, tag = invulnerable] run return run function base:invulnerable
execute if entity @s[team = blue, advancements = {base:attack_red = true}] if entity @n[tag = red_base, tag = invulnerable] run return run function base:invulnerable

#---攻擊自己陣地---
execute if entity @s[team = red, advancements = {base:attack_red = true}] run return run function base:friendly_fire
execute if entity @s[team = blue, advancements = {base:attack_blue = true}] run return run function base:friendly_fire

execute if entity @s[team = red, advancements = {base:attack_blue = true}] as @n[tag = blue_base] run function base:team
execute if entity @s[team = blue, advancements = {base:attack_red = true}] as @n[tag = red_base] run function base:team
advancement revoke @s only base:attack_red
advancement revoke @s only base:attack_blue
