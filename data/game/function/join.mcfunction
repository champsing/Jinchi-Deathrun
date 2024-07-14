gamemode adventure @s
recipe take @s *
experience add @s -99999999 levels
scoreboard players set @s stamina 100
scoreboard players enable @s kit

execute store result score @s UUID1 run data get entity @s UUID[0]
execute store result score @s UUID2 run data get entity @s UUID[1]
execute store result score @s UUID3 run data get entity @s UUID[2]
execute store result score @s UUID4 run data get entity @s UUID[3]

give @s wooden_sword[custom_data={upgrade:2,forge:0},attribute_modifiers=[{id:"generic.attack_damage",amount:3,operation:"add_value",slot:"mainhand"},{id:"generic.attack_speed",id:"generic.attack_speed",amount:-2.4,operation:"add_value",slot:"mainhand"}]]

give @s stone_pickaxe[custom_data={upgrade:2},hide_additional_tooltip={},unbreakable={show_in_tooltip:false}]

give @s wooden_axe[custom_data={upgrade:2,forge:0},attribute_modifiers=[{id:"generic.attack_damage",amount:6,operation:"add_value",slot:"mainhand"},{id:"generic.attack_speed",amount:-3.2,operation:"add_value",slot:"mainhand"}]]

give @s cooked_beef[lore=['{"text":"§7補充2%體力"}']] 5

execute if entity @s[scores={join=1}] run team join red @s
execute if entity @s[scores={join=2}] run team join blue @s

execute as @s[team=red] at @e[team=red_edit,tag=spawn,limit=1,sort=random] run spawnpoint @s ~ ~ ~
execute as @s[team=blue] at @e[team=blue_edit,tag=spawn,limit=1,sort=random] run spawnpoint @s ~ ~ ~
tp @s[team=red] @e[team=red_edit,tag=spawn,limit=1,sort=random]
tp @s[team=blue] @e[team=blue_edit,tag=spawn,limit=1,sort=random]

scoreboard players reset @s join