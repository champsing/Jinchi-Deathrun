data remove entity @s Pose
execute facing entity @p eyes run tp @s ~ ~ ~ ~ ~
execute if data entity @s {Glowing:0b} run data merge entity @s {Glowing:1b}
tag @s add edited