#---不是大廳或編輯模式---
execute if score 操作模式 system matches 3 run return run tellraw @s ["",{text:">> ",color:gold},{text:"遊戲目前已經開始。請"},{text:"結束遊戲",bold:true,color:gold},{text:"後再瀏覽場地配置。"}]

#---印出場地配置---
tellraw @s ["",{text: ">> ", color: gold},{text: "場地配置：", bold: true}]
tellraw @s ["",{text: ">> ", color: gold},{text: "  ⫸ "},{text: " 寶箱點 ", color: aqua}, "：", {score: {name:  "寶箱點數量", objective: "menu"}, color: "gold"}, " 個"]

tellraw @s ["",{text: ">> ", color: gold},{text: "  ⫸ "},{text: "[ A點 ]", color: green, click_event: {action: "run_command", command: "/function edit:border/teleport_a"}, hover_event: {action: "show_text", value: "點擊可傳送"}}, "：", {score: {name:  "a_pt", objective: "x"}}, ", ", {score: {name: "a_pt", objective: "y"}}, ", ", {score: {name: "a_pt", objective: "z"}}]

tellraw @s ["",{text: ">> ", color: gold},{text: "  ⫸ "},{text: "[ B點 ]", color: green, click_event: {action: "run_command", command: "/function edit:border/teleport_b"}, hover_event: {action: "show_text", value: "點擊可傳送"}}, "：", {score: {name:  "b_pt", objective: "x"}}, ", ", {score: {name: "b_pt", objective: "y"}}, ", ", {score: {name: "b_pt", objective: "z"}}]

tellraw @s ["",{text: ">> ", color: gold},{text: "  ⫸ "},{text: "[ 紅隊陣地 ]", color: red, click_event: {action: "run_command", command: "/function edit:base/teleport_red"}, hover_event: {action: "show_text", value: "點擊可傳送"}}, "：", {score: {name:  "red", objective: "x"}}, ", ", {score: {name: "red", objective: "y"}}, ", ", {score: {name: "red", objective: "z"}}]

tellraw @s ["",{text: ">> ", color: gold},{text: "  ⫸ "},{text: "[ 藍隊陣地 ]", color: blue, click_event: {action: "run_command", command: "/function edit:base/teleport_blue"}, hover_event: {action: "show_text", value: "點擊可傳送"}}, "：", {score: {name:  "blue", objective: "x"}}, ", ", {score: {name: "blue", objective: "y"}}, ", ", {score: {name: "blue", objective: "z"}}]

tellraw @s ["",{text: ">> ", color: gold},{text: "  ⫸ "},{text: "[ 中央點 ]", color: gray, click_event: {action: "run_command", command: "/function edit:center/teleport"}, hover_event: {action: "show_text", value: "點擊可傳送"}}, "：", {score: {name:  "center", objective: "x"}}, ", ", {score: {name: "center", objective: "y"}}, ", ", {score: {name: "center", objective: "z"}}]

tellraw @s ["",{text: ">> ", color: gold},{text: "  ⫸ "},{text: "[ 大廳 ]", color: gray, click_event: {action: "run_command", command: "/tp @s @n[tag = lobby]"}, hover_event: {action: "show_text", value: "點擊可傳送"}}, "：", {score: {name:  "lobby", objective: "x"}}, ", ", {score: {name: "lobby", objective: "y"}}, ", ", {score: {name: "lobby", objective: "z"}}]