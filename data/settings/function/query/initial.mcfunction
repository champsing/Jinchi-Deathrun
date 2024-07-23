advancement revoke @s only settings:query/initial
execute unless predicate settings:is_sneaking run scoreboard players add 初始分數 menu 100
execute if predicate settings:is_sneaking run scoreboard players remove 初始分數 menu 100

execute if score 初始分數 menu matches 1600.. run scoreboard players set 初始分數 menu 500
execute if score 初始分數 menu matches ..400 run scoreboard players set 初始分數 menu 1500

tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"初始分數設為 "},{"score":{"name":"初始分數","objective":"menu"},"bold":true,"color":"gold"}]