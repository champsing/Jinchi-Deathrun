# 先創od
scoreboard objectives add od dummy "其他資料包"

# 刪除 亡國之戰II
# entrypoint: start:delete
function start:delete
team remove gold
scoreboard objectives remove menu
function start:uninstall/iterate_versions

# 刪除 監控圍城II
# entrypoint: system:uninstall
function system:uninstall
execute store success score 監控II資料包 od run datapack disable "file/JianKong2.zip"

execute if score 亡國II資料包 od matches 1.. run tellraw @a ["",{translate:jd.edit.function.config.5_1, color: gold},{translate:jd.start.function.uninstall.other_maps.16_2, bold: true}]
execute if score 監控II資料包 od matches 1.. run tellraw @a ["",{translate:jd.edit.function.config.5_1, color: gold},{translate:jd.start.function.uninstall.other_maps.17_2, bold: true}]
scoreboard players reset 亡國II資料包 od
scoreboard players reset 監控II資料包 od