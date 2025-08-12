#---保險起見，如果陣地無敵直接return---
execute if entity @n[tag = red_base] run return fail
execute if entity @n[tag = blue_base, tag = invulnerable] run return fail

#---攻擊自己陣地---
execute if entity @s[team = red] on attacker if entity @s[team = red] run return run function base:friendly_fire
execute if entity @s[team = blue] on attacker if entity @s[team = blue] run return run function base:friendly_fire

execute if entity @s[team = blue] on attacker if entity @s[team = red] run function base:success
execute if entity @s[team = red] on attacker if entity @s[team = blue] run function base:success
data remove entity @s attack