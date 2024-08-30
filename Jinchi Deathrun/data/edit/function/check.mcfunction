execute if score 寶箱點 editinfo matches 0..2 run return run tellraw @s ["",{"text":">> ","color": "gold"},{"text":"無法退出"},{"text":"編輯模式","color":"gold"},{"text":", 請至少指定"},{"text":"3","color":"gold"},{"text":"個寶箱點"}]

execute if score 寶箱點 editinfo matches 3.. run function edit:exit