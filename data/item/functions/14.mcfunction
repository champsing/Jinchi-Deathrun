tag @s add item14
execute if entity @s[team=red] run tp @s[tag=!item14,team=red] @s
execute if entity @s[team=blue] run tp @s[tag=!item14,team=blue] @s
tag @s remove item14
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"selector":"@s"},{"text":"使用了"},{"text":"召集道具","color":"gold"},{"text":" 隨機把"},{"text":"一名隊友","color":"gold"},{"text":"傳送過來"}]
kill @e[limit=1,sort=nearest,type=snowball,nbt={Item:{tag:{CustomModelData:14}}}]