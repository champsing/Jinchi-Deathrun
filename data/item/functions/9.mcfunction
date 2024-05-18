execute if entity @s[team=red] run effect give @r[team=blue] slowness 20 0 true
execute if entity @s[team=blue] run effect give @r[team=red] slowness 20 0 true
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"selector":"@s"},{"text":"使用了"},{"text":"緩速道具","color":"gold"},{"text":" 隨機一位敵方玩家緩速"},{"text":"20秒","color":"gold"}]
kill @e[limit=1,sort=nearest,type=snowball,nbt={Item:{tag:{CustomModelData:9}}}]