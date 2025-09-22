# 先創od
scoreboard objectives add od dummy "其他資料包"

# 刪除 亡國之戰II
function start:delete
team remove gold
scoreboard objectives remove menu
function start:uninstall/iterate_versions

# 刪除 監控圍城II
function system:uninstall
execute store success score 監控II資料包 od run datapack disable "file/JianKong2.zip"

execute if score 亡國II資料包 od matches 1.. run tellraw @a ["",{text: ">> ", color: gold},{text: "已刪除「亡國之戰 II」所有內容", bold: true}]
execute if score 監控II資料包 od matches 1.. run tellraw @a ["",{text: ">> ", color: gold},{text: "已刪除「監控圍城 II」所有內容", bold: true}]
scoreboard players reset 亡國II資料包 od
scoreboard players reset 監控II資料包 od