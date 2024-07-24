gamemode adventure @s
recipe take @s *
experience add @s -99999999 levels
scoreboard players set @s stamina 100

give @s blaze_rod[custom_data={"adrenaline": true}]

execute if entity @s[scores={join=1}] run team join red @s
execute if entity @s[scores={join=2}] run team join blue @s

execute as @s[team=red] at @n[team = red, tag = base] run spawnpoint @s ~ ~ ~
execute as @s[team=blue] at @n[team = blue, tag = base] run spawnpoint @s ~ ~ ~
tp @s[team=red] @n[team = red, tag = base]
tp @s[team=blue] @n[team = blue, tag = base]

bossbar set minecraft:time players @a
scoreboard players reset @s join