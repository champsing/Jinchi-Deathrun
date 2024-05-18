scoreboard players add @s score 1000
tag @s add invalid
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"selector":"@s"},{"text":"成功碰觸敵方"},{"text":"陣地","color":"gold"},{"text":" 獲得了"},{"text":"1000分","color":"gold"}]
playsound block.anvil.place ambient @a