gamemode adventure @s
recipe take @s *
xp set @a 0 levels
xp set @a 0 points
scoreboard players set @s stamina 100

give @s breeze_rod[custom_data= {adrenaline: true}, item_name= [{text:"§4§l腎上腺素",italic: false}], lore= [{text:"§7在主手時可獲得加速I效果。",italic: false},{text:"§c體力低於 30% 時不得使用。",italic: false}]]

execute if entity @s[scores={join=1}] run team join red @s
execute if entity @s[scores={join=2}] run team join blue @s

execute as @s[team=red] at @n[tag = red_base] run spawnpoint @s ~ ~ ~
execute as @s[team=blue] at @n[tag = blue_base] run spawnpoint @s ~ ~ ~
tp @s[team=red] @n[tag = red_base]
tp @s[team=blue] @n[tag = blue_base]

bossbar set minecraft:countdown players @a
scoreboard players reset @s join