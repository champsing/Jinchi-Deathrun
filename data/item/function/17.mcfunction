execute if entity @s[team=red] run scoreboard players add @e[tag=base,team=red] base 600
execute if entity @s[team=blue] run scoreboard players add @e[tag=base,team=blue] base 600
execute if entity @s[team=red] at @e[tag=base,team=red] run fill ~ ~ ~ ~ ~10 ~ bedrock
execute if entity @s[team=blue] at @e[tag=base,team=blue] run fill ~ ~ ~ ~ ~10 ~ bedrock
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"selector":"@s"},{"text":"使用了"},{"text":"無敵陣地道具","color":"gold"},{"text":" 己方陣地無法攻陣"},{"text":"20秒","color":"gold"}]
kill @e[limit=1,sort=nearest,type=snowball,nbt={Item:{tag:{CustomModelData:16}}}]