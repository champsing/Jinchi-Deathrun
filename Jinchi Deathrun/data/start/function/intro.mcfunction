# >> 歡迎遊玩 陣地大逃殺
# >> 作者: 香榭 Champsing
# >> 若想解除安裝資料包，請點擊 此處
# >> 左鍵敲擊作者可重新顯示

#---給予反應---
execute positioned as @e[type = interaction, tag = champsing] run particle flash ~ ~ ~ 0.1 0.1 0.1 0.3 1 normal
playsound block.medium_amethyst_bud.break master @s ~ ~ ~ 1 0.8 1

tellraw @a ["",{"text":">> ","color":"gold"},"歡迎遊玩 ",{"text":"陣地","bold":true,"color":"gold"},{"text":"大逃殺","bold":true,"color":"red"}]
tellraw @a ["",{"text":">> ","color":"gold"},"作者: ",{"text":"香榭 Champsing","bold":true,"color":"aqua","hover_event": {"action": "show_text", "value": "點擊複製 Discord 使用者名稱"}, "click_event": {"action": "copy_to_clipboard", "value": "champsing"}}]
tellraw @a ["",{"text":">> ","color":"gold"},"若想解除安裝資料包，請點擊 ",{"text":"此處","color":"gold", "hover_event": {"action": "show_text", "value": "/function start:uninstall"}, "click_event": {"action": "run_command", "command": "/function start:uninstall"}}]
tellraw @a ["",{"text":">> ","color":"gold"},"左鍵敲擊作者可重新顯示"]

advancement revoke @s only start:hit_champsing