#---保險起見，如果陣地無敵直接return---
execute if entity @s[tag = red_base, tag = invulnerable] run return run function base:invulnerable
execute if entity @s[tag = blue_base, tag = invulnerable] run return run function base:invulnerable

execute if entity @s[tag = blue_base] on attacker run function base:success
execute if entity @s[tag = red_base] on attacker run function base:success
data remove entity @s attack