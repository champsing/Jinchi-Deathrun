execute unless score A點 editinfo matches 1 run return run tellraw @s ["",{"text":">> ","color": "gold"},{"text":"無法退出"},{"text":"編輯模式","color":"gold"},{"text":", 請指定"},{"text":"A點","color":"gold"}]
execute unless score B點 editinfo matches 1 run return run tellraw @s ["",{"text":">> ","color": "gold"},{"text":"無法退出"},{"text":"編輯模式","color":"gold"},{"text":", 請指定"},{"text":"B點","color":"gold"}]

execute if score A點 editinfo matches 1 if score B點 editinfo matches 1 run function edit:exit