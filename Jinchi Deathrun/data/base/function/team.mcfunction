execute if entity @s[team=blue] unless score @s base matches 1.. as @a[tag=base_attack,team=red] run function base:success
execute if entity @s[team=red] unless score @s base matches 1.. as @a[tag=base_attack,team=blue] run function base:success
data remove entity @s attack