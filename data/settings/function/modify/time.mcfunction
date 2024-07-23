# 單位: 秒
execute unless predicate settings:is_sneaking run scoreboard players add 遊戲時間 menu 300
execute if predicate settings:is_sneaking run scoreboard players remove 遊戲時間 menu 300

# min 15分鐘 max 2小時
execute if score 遊戲時間 menu matches 3900.. run scoreboard players set 遊戲時間 menu 900
execute if score 遊戲時間 menu matches ..600 run scoreboard players set 遊戲時間 menu 7200

data modify block ~ ~ ~ front_text.messages[2] set value '{"score":{"name":"遊戲時間","objective":"menu"},"bold":true,"clickEvent":{"action":"run_command","value":"playsound minecraft:entity.player.attack.sweep ambient @s"}}'