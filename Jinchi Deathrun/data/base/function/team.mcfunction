execute if entity @s[team=blue] as @a[tag=base_attack,team=red] run function base:success
execute if entity @s[team=red] as @a[tag=base_attack,team=blue] run function base:success
data remove entity @s attack