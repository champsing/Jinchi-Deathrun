scoreboard objectives add version dummy "版本"

# refer to VN.txt
data merge storage start:version_info {verInt: 5, verFloat: "1.2.0", date: "2025/12/17"}
execute store result score 包 version run data get storage start:version_info verInt 1.0

# Prod
execute if score 本地 version matches 1.. if score 包 version > 本地 version run return run function start:update/main
# Beta
#execute if score 本地 version matches ..0 if score 包 version < 本地 version run return run function start:update/main

tellraw @a ["",{translate:jd.edit.function.config.5_1,color:gold},{translate:jd.start.function.load.12_2,color:gold},{"storage": "start:version_info", nbt: "verFloat",color:aqua, hover_event:{action: "show_text", value: [{translate:jd.start.function.load.12_3},{storage: "start:version_info", nbt: "verInt"}]}},{translate:jd.start.function.load.12_4,color:gold},{"storage": "start:version_info", nbt: "date", color: aqua}]
tellraw @a ["",{translate:jd.edit.function.config.5_1,color:gold},{translate:jd.start.function.load.13_2,color:aqua,bold: true, underlined: true, click_event: {action: "open_url", "url": "https://reurl.cc/koAYrb"}}]

execute unless entity @e[tag = jd.lobby] run tellraw @a ["\n",{translate:jd.edit.function.config.5_1,color:gold},"點擊 ",{translate:jd.start.function.intro.12_1,click_event: {action: "run_command",command: "/function start:activate"},hover_event: {action: "show_text",value: [{translate:jd.start.function.load.15_3}]},color: aqua, underlined: true}," 生成大廳"]
