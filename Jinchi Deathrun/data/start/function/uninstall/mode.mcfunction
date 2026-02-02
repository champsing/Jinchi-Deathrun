tellraw @s ""
tellraw @s ["",{translate:jd.edit.function.config.5_1, color: gold},{translate:jd.start.function.uninstall.mode.2_2, bold: true}]
tellraw @s ["",{translate:jd.edit.function.config.5_1, color: gold},{translate:jd.start.function.uninstall.mode.3_2, bold: true, color: red}]
tellraw @s ["",{translate:jd.edit.function.config.5_1, color: gold},{translate:jd.edit.function.config.6_2},{translate:jd.start.function.uninstall.mode.4_3, color: green, bold: true, click_event: {action: "run_command", command: "/function start:uninstall/main"}}]
tellraw @s ["",{translate:jd.edit.function.config.5_1, color: gold},{translate:jd.edit.function.config.6_2},{translate:jd.start.function.uninstall.mode.5_3, color: dark_red, click_event: {action: "run_command", command: "/function start:uninstall/force_delete"}, hover_event: {action: "show_text", value: [{translate:jd.start.function.uninstall.mode.5_4, color: red}]}}]
