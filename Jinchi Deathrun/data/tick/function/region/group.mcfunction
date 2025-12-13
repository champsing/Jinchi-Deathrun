#---REGION：合體---
execute as @a[team = red] at @s store result score @s grouped if entity @a[team = red, distance = ..5,tag = !infinity]
execute as @a[team = blue] at @s store result score @s grouped if entity @a[team = blue, distance = ..5,tag = !infinity]

#---陣地(無論顏色)內不允許合體，不然1000分會被平分---
scoreboard players reset @a[tag = infinity, team = !spec] grouped
execute as @a[team = !spec,scores={grouped=1..}] at @s run function game:teaming
execute as @a[team = !spec,scores={grouped=1}] run scoreboard players operation @s team_score = @s score
