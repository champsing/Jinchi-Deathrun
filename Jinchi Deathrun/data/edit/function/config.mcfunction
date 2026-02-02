#---不是大廳或編輯模式---
execute if score 操作模式 system matches 3 run return run tellraw @s [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.edit.function.config.2_1},{translate:jd.edit.function.config.2_2,bold:true,color:gold},{translate:jd.edit.function.config.2_3}]

#---印出場地配置---
tellraw @s ["",{translate:jd.edit.function.config.5_1, color: gold},{translate:jd.edit.function.config.5_2, bold: true}]
tellraw @s ["",{translate:jd.edit.function.config.5_1, color: gold},{translate:jd.edit.function.config.6_2},{translate:jd.edit.function.config.6_3, color: aqua}, "：", {score: {name:  "寶箱點數量", objective: "menu"}, color: "gold"}, " 個"]

tellraw @s ["",{translate:jd.edit.function.config.5_1, color: gold},{translate:jd.edit.function.config.6_2},{translate:jd.edit.function.config.8_3, color: red}, "：", {score: {name:  "紅隊陣地", objective: "menu"}, color: "gold"}, " 個"]

tellraw @s ["",{translate:jd.edit.function.config.5_1, color: gold},{translate:jd.edit.function.config.6_2},{translate:jd.edit.function.config.10_3, color: blue}, "：", {score: {name:  "藍隊陣地", objective: "menu"}, color: "gold"}, " 個"]

tellraw @s ["",{translate:jd.edit.function.config.5_1, color: gold},{translate:jd.edit.function.config.6_2},{translate:jd.edit.function.config.12_3, color: green, click_event: {action: "run_command", command: "/function edit:border/teleport_a"}, hover_event: {action: "show_text", value: "點擊可傳送"}}, "：", {score: {name:  "a_pt", objective: "x"}}, ", ", {score: {name: "a_pt", objective: "y"}}, ", ", {score: {name: "a_pt", objective: "z"}}]

tellraw @s ["",{translate:jd.edit.function.config.5_1, color: gold},{translate:jd.edit.function.config.6_2},{translate:jd.edit.function.config.14_3, color: green, click_event: {action: "run_command", command: "/function edit:border/teleport_b"}, hover_event: {action: "show_text", value: "點擊可傳送"}}, "：", {score: {name:  "b_pt", objective: "x"}}, ", ", {score: {name: "b_pt", objective: "y"}}, ", ", {score: {name: "b_pt", objective: "z"}}]

tellraw @s ["",{translate:jd.edit.function.config.5_1, color: gold},{translate:jd.edit.function.config.6_2},{translate:jd.edit.function.config.16_3, color: gray, click_event: {action: "run_command", command: "/function edit:center/teleport"}, hover_event: {action: "show_text", value: "點擊可傳送"}}, "：", {score: {name:  "center", objective: "x"}}, ", ", {score: {name: "center", objective: "y"}}, ", ", {score: {name: "center", objective: "z"}}]

tellraw @s ["",{translate:jd.edit.function.config.5_1, color: gold},{translate:jd.edit.function.config.6_2},{translate:jd.edit.function.config.18_3, color: gray, click_event: {action: "run_command", command: "/tp @s @n[tag = jd.lobby]"}, hover_event: {action: "show_text", value: "點擊可傳送"}}, "：", {score: {name:  "lobby", objective: "x"}}, ", ", {score: {name: "lobby", objective: "y"}}, ", ", {score: {name: "lobby", objective: "z"}}]