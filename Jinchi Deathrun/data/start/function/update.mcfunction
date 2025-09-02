execute if score 操作模式 system matches 3 run function game:force_end

function start:install

tellraw @a ["",{text: ">> ",color:gold},{text:"資料包更新成功",color:"green"},{text: "，目前版本：",color:gold},{"storage": "start:version_info", "nbt": "verFloat",color:aqua},{text: "(",color:aqua},{"storage": "start:version_info", "nbt": "verInt",color:aqua},{text: ")",color:aqua},{text: "，發布日期：",color:gold},{"storage": "start:version_info", "nbt": "date", color: aqua},{text: "  ",color:aqua}]

tellraw @a ["",{text: ">> ",color:gold},{text: "版本發布頁面",color:aqua,bold: true, underlined: true, click_event: {action: "open_url", "url": "https://github.com/champsing/Jinchi-Deathrun/releases/"}}]

execute unless entity @e[tag = lobby] run tellraw @a ["",{text:">> ",color:gold},"點擊 ",{text:"此處",click_event: {action: "run_command",command: "/function start:activate"},hover_event: {action: "show_text",value: [{text: "/function start:activate"}]},color: aqua, underlined: true}," 生成大廳"]
