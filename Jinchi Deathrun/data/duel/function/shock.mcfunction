# 電擊
# @s: 1. target 2. attacker
# at: Server

effect give @s darkness 10 0 true
effect give @s slowness 10 2 true
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你因在"},{"text":"無效狀態","color":"gold"},{"text":"中試圖決鬥或攻陣而遭受"},{"text":"電擊","color":"gold"},{"text":"，獲得負面效果黑暗I和緩速III "},{"text":"10秒","color":"gold"}]