execute if score 操作模式 system matches 3 run function game:force_end

function start:uninstall/other_maps
function start:update/reload_scbds
function start:install

tellraw @a ["",{translate:jd.edit.function.config.5_1,color:gold},{translate:jd.start.function.update.main.7_2,color:"green"},{translate:jd.start.function.update.main.7_3,color:gold},{"storage": "start:version_info", "nbt": "verFloat",color:aqua},{translate:jd.game.function.end.end.58_2,color:aqua},{"storage": "start:version_info", "nbt": "verInt",color:aqua},{translate:jd.game.function.end.end.58_3,color:aqua},{translate:jd.start.function.load.12_4,color:gold},{"storage": "start:version_info", "nbt": "date", color: aqua},{translate:jd.start.function.update.main.7_7,color:aqua}]

tellraw @a ["",{translate:jd.edit.function.config.5_1,color:gold},{translate:jd.start.function.load.13_2,color:aqua,bold: true, underlined: true, click_event: {action: "open_url", "url": "https://reurl.cc/koAYrb"}}]

execute unless entity @e[tag = jd.lobby] run tellraw @a [{translate: jd.empty},{translate:"jd.console",color:gold},"點擊 ",{translate:jd.start.function.intro.12_1,click_event: {action: "run_command",command: "/function start:activate"},hover_event: {action: "show_text",value: [{translate:jd.start.function.load.15_3}]},color: aqua, underlined: true}," 生成大廳"]
