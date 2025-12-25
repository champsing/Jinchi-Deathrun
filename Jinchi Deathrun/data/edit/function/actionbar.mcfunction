title @a times 10 30 10
title @a actionbar ["", {text: "編輯模式下，擁有權限的玩家可以點擊作者獲得編輯工具", color: aqua}]
execute if score 操作模式 system matches 2 run schedule function edit:actionbar 15s