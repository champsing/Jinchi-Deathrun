tellraw @s ""
tellraw @s ["",{text: ">> ", color: gold},{text: "您要保留 A、B、中央點和寶箱點等標記盔甲座嗎？", bold: true}]
tellraw @s ["",{text: ">> ", color: gold},{text: "刪除標記盔甲座不可逆，請謹慎選擇！！\n", bold: true, color: red}]
tellraw @s ["",{text: ">> ", color: gold},{text: "  ⫸ "},{text: "[ 保留地圖配置 ]", color: green, bold: true, click_event: {action: "run_command", command: "/function start:uninstall/main"}}]
tellraw @s ["",{text: ">> ", color: gold},{text: "  ⫸ "},{text: "[ 刪除 ]", color: dark_red, click_event: {action: "run_command", command: "/function start:uninstall/force_delete"}, hover_event: {action: "show_text", value: [{text: "刪除標記盔甲座不可逆，請謹慎選擇！！", color: red}]}}]
