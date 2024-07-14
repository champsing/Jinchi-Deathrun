effect clear @s slowness
effect clear @s glowing
effect clear @s darkness
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"selector":"@s"},{"text":"使用了"},{"text":"解除詛咒道具","color":"gold"},{"text":" 消除所有"},{"text":"負面狀態效果","color":"gold"}]
kill @e[limit=1,sort=nearest,type=snowball,nbt={Item:{tag:{CustomModelData:16}}}]