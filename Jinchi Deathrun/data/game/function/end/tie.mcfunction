# 平手進入延長賽

#---聲音提示---
execute as @a at @s run playsound entity.wither.spawn ambient @s ~ ~ ~

#---延長賽分數---
scoreboard players set 延長賽 gamecore 1
scoreboard players display numberformat 剩餘時間 gameinfo fixed {"text": "延長賽", "color": "#ff5bbe"}
bossbar set countdown name [{"text":"剩餘時間： "},{"text": "延長賽", "color": "#ff5bbe"}]

title @a times 1s 4s 1s
title @a title {"text":"延長賽","bold":true,"color":"#ff5bbe"}
title @a subtitle {"text":"先領先者獲勝","bold":true}
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text": "由於時間限制已到，但雙方分數相同，因此進入延長賽階段，"},{"text": "先領先對方者獲勝","color": "gold"}]
