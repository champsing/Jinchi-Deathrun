scoreboard players add 目標分數 menu 1000
execute if score 目標分數 menu matches 16000.. run scoreboard players set 目標分數 menu 5000
data modify block ~ ~ ~ front_text.messages[2] set value '{"score":{"name":"目標分數","objective":"menu"},"bold":true,"clickEvent":{"action":"run_command","value":"playsound entity.player.attack.sweep ambient @s"}}'