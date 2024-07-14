execute if entity @s[team=red] run effect give @r[team=blue] glowing 30 0 true
execute if entity @s[team=blue] run effect give @r[team=red] glowing 30 0 true
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"selector":"@s"},{"text":"使用了"},{"text":"發光道具","color":"gold"},{"text":" 隨機一位敵方玩家發光"},{"text":"30分","color":"gold"}]
kill @e[limit=1,sort=nearest,type=snowball,nbt={Item:{tag:{CustomModelData:8}}}]