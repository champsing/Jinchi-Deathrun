effect give @s speed 30 0 true
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"selector":"@s"},{"text":"使用了"},{"text":"加速道具","color":"gold"},{"text":" 獲得加速"},{"text":"30秒","color":"gold"}]
kill @e[limit=1,sort=nearest,type=snowball,nbt={Item:{tag:{CustomModelData:11}}}]