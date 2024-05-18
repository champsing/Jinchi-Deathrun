tag @s add item15
execute if entity @s[team=red] run tag @a[team=red,tag=!item15] add item15_target
execute if entity @s[team=blue] run tag @a[team=blue,tag=!item15] add item15_target

summon marker ~ ~ ~ {Tags:["item15_marker"]}
tp @e[tag=item15_marker,type=marker,limit=1] @s
tp @s @a[tag=item15_target,limit=1]
tp @a[tag=item15_target,limit=1] @e[tag=item15_marker,type=marker,limit=1]

tag @s remove item15
tag @s remove item15_target
kill @e[tag=item15_marker,type=marker]
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"selector":"@s"},{"text":"使用了"},{"text":"互換道具","color":"gold"},{"text":" 與隨機一位隊友"},{"text":"互換位置","color":"gold"}]
kill @e[limit=1,sort=nearest,type=snowball,nbt={Item:{tag:{CustomModelData:15}}}]