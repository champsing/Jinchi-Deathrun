scoreboard objectives add version dummy "版本"

# refer to VN.txt
data merge storage start:version_info {verInt: -7, verFloat: "0.0.7", date: "2025/9/12"}
execute store result score 包 version run data get storage start:version_info verInt 1.0

# Prod
execute if score 本地 version matches 1.. if score 包 version > 本地 version run return run function start:update
# Beta
execute if score 本地 version matches ..0 if score 包 version < 本地 version run return run function start:update

tellraw @a ["",{text: ">> ",color:gold},{text: "資料包載入成功，目前版本：",color:gold},{"storage": "start:version_info", "nbt": "verFloat",color:aqua},{text: " (",color:aqua},{"storage": "start:version_info", "nbt": "verInt",color:aqua},{text: ")",color:aqua},{text: "，發布日期：",color:gold},{"storage": "start:version_info", "nbt": "date", color: aqua},{text: "  ",color:aqua}]
tellraw @a ["",{text: ">> ",color:gold},{text: "版本發布頁面",color:aqua,bold: true, underlined: true, click_event: {action: "open_url", "url": "https://github.com/champsing/Jinchi-Deathrun/releases/"}}]

execute unless entity @e[tag = lobby] run tellraw @a ["",{text:">> ",color:gold},"點擊 ",{text:"此處",click_event: {action: "run_command",command: "/function start:activate"},hover_event: {action: "show_text",value: [{text: "/function start:activate"}]},color: aqua, underlined: true}," 生成大廳"]
