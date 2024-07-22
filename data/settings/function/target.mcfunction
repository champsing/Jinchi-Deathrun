execute unless predicate settings:is_sneaking run scoreboard players add 目標分數 menu 1000
execute if predicate settings:is_sneaking run scoreboard players remove 目標分數 menu 1000

# min 5000 max 15000 
# 15000+1000, 5000-1000, -1-1000, -1+1000
execute if score 目標分數 menu matches 16000.. run scoreboard players set 目標分數 menu -1
execute if score 目標分數 menu matches ..4000 run scoreboard players set 目標分數 menu -1
execute if score 目標分數 menu matches -1001 run scoreboard players set 目標分數 menu 15000
execute if score 目標分數 menu matches 999 run scoreboard players set 目標分數 menu 5000

execute if score 目標分數 menu matches -1 run scoreboard players display numberformat 目標分數 menu fixed {"text": "無限","color": "dark_red","bold": true}
execute if score 目標分數 menu matches -1 run tellraw @s ["",{"text": ">> ","color": "gold"},{"text":"時間無限制時，。"}]


data modify block ~ ~ ~ front_text.messages[2] set value '{"score":{"name":"目標分數","objective":"menu"},"bold":true,"clickEvent":{"action":"run_command","value":"playsound entity.player.attack.sweep ambient @s"}}'