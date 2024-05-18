scoreboard players add 初始分數 menu 100
execute if score 初始分數 menu matches 1600.. run scoreboard players set 初始分數 menu 500
data merge block ~ ~ ~ {Text3:'{"score":{"name":"初始分數","objective":"menu"},"bold":true,"clickEvent":{"action":"run_command","value":"playsound entity.player.attack.sweep ambient @s"}}'}