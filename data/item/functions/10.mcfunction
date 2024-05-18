execute if entity @s[team=red] run effect give @a[team=blue] slowness 5 0 true
execute if entity @s[team=blue] run effect give @a[team=red] slowness 5 0 true
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"selector":"@s"},{"text":"使用了"},{"text":"緩速道具","color":"gold"},{"text":" 所有敵方玩家緩速"},{"text":"5秒","color":"gold"}]
kill @e[limit=1,sort=nearest,type=snowball,nbt={Item:{tag:{CustomModelData:10}}}]