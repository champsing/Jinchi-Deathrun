tag @s add invalid
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"selector":"@s"},{"text":"使用了"},{"text":"無效狀態道具","color":"gold"}]
kill @e[limit=1,sort=nearest,type=snowball,nbt={Item:{tag:{CustomModelData:13}}}]