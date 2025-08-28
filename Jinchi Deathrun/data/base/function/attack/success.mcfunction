#---無效狀態攻陣---
execute if entity @s[tag = invalid] run return run function duel:shock/success

#---保險起見---
execute if entity @s[team = red, tag = base_attack_blue] if entity @n[tag = blue_base, tag = invulnerable, type = interaction] run return run function base:invulnerable
execute if entity @s[team = blue, tag = base_attack_red] if entity @n[tag = red_base, tag = invulnerable, type = interaction] run return run function base:invulnerable

#---攻擊自己陣地---
execute if entity @s[team = red, tag = base_attack_red] run return run function base:friendly_fire
execute if entity @s[team = blue, tag = base_attack_blue] run return run function base:friendly_fire

execute if entity @s[team = red, tag = base_attack_blue] as @n[tag = blue_base] run function base:team
execute if entity @s[team = blue, tag = base_attack_red] as @n[tag = red_base] run function base:team