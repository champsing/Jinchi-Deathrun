scoreboard players add @s score 1000
tag @s add invalid
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"selector":"@s"},{"text":"成功碰觸敵方"},{"text":"陣地","color":"gold"},{"text":" 獲得了"},{"text":"1000分","color":"gold"}]
execute if entity @s[team = red] at @e[tag = base, tag = blue] run summon lightning_bolt ~ ~10 ~
execute if entity @s[team = blue] at @e[tag = base, tag = red] run summon lightning_bolt ~ ~10 ~

playsound block.anvil.place ambient @a