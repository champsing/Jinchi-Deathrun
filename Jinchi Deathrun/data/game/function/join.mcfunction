gamemode adventure @s
recipe take @s *
experience add @s -99999999 levels
scoreboard players set @s stamina 100

give @s blaze_rod[custom_data={"adrenaline": true}]

execute if entity @s[scores={join=1}] run team join red @s
execute if entity @s[scores={join=2}] run team join blue @s

execute as @s[team=red] at @e[team=red_edit,tag=spawn,limit=1,sort=random] run spawnpoint @s ~ ~ ~
execute as @s[team=blue] at @e[team=blue_edit,tag=spawn,limit=1,sort=random] run spawnpoint @s ~ ~ ~
tp @s[team=red] @e[team=red_edit,tag=spawn,limit=1,sort=random]
tp @s[team=blue] @e[team=blue_edit,tag=spawn,limit=1,sort=random]

bossbar set minecraft:time players @a
scoreboard players reset @s join