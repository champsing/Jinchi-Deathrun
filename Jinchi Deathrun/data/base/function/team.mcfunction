#---保險起見，如果陣地無敵直接return---
execute if entity @e[tag=base,tag=red,limit=1,nbt={Invulnerable:1b}] run return fail
execute if entity @e[tag=base,tag=blue,limit=1,nbt={Invulnerable:1b}] run return fail

execute if entity @s[team=blue] as @a[tag=base_attack,team=red] run function base:success
execute if entity @s[team=red] as @a[tag=base_attack,team=blue] run function base:success
data remove entity @s attack