tellraw @a ["",{text:">> ",color:gold},"資料包載入成功，目前版本：",{"storage": "start:version_info", "nbt": "verFloat",color:aqua}]
execute unless entity @e[tag=lobby] run tellraw @a ["",{text:">> ",color:gold},"點擊 ",{text:"此處",click_event: {action: "run_command",command: "/function start:activate"},hover_event: {action: "show_text",value: [{text: "/function start:activate"}]},color: aqua, underlined: true}," 生成大廳"]

scoreboard objectives add version dummy "版本"
# 1.0.0 1
data merge storage start:version_info {verInt: 1, verFloat: "1.0.0", date: "2025/"}
execute store result score 包 version run data get storage start:version_info verInt 1.0
execute if score 包 version > 本地 version run function start:update