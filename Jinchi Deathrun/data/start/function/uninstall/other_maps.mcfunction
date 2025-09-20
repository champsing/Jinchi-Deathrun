# 刪除 亡國之戰II
execute store result score 亡國II資料包 system run function start:delete
team remove gold
scoreboard objectives remove menu
datapack disable "file/亡國之戰2資料包 Ver1.3.7.zip"

# 刪除 監控圍城II
execute store result score 監控II資料包 system run function system:uninstall
datapack disable "file/JianKong2.zip"

execute if score 亡國II資料包 system matches 1.. run tellraw @a ["",{text: ">> ", color: gold},{text: "已刪除「亡國之戰 II」所有內容", bold: true}]
execute if score 監控II資料包 system matches 1.. run tellraw @a ["",{text: ">> ", color: gold},{text: "已刪除「監控圍城 II」所有內容", bold: true}]
scoreboard players reset 亡國II資料包 system
scoreboard players reset 監控II資料包 system