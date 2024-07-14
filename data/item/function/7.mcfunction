execute if entity @s[team=red] run effect give @a[team=blue] glowing 10 0 true
execute if entity @s[team=blue] run effect give @a[team=red] glowing 10 0 true
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"selector":"@s"},{"text":"使用了"},{"text":"發光道具","color":"gold"},{"text":" 所有敵方玩家發光"},{"text":"10分","color":"gold"}]
kill @e[limit=1,sort=nearest,type=snowball,nbt={Item:{tag:{CustomModelData:7}}}]