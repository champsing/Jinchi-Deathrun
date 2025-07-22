scoreboard players add @s score 200
function game:refresh_scbd
tellraw @a ["",{"text":">> ","color":"gold"},{"selector":"@s"},{"text":"使用了"},{"text":"加分道具","color":"gold"},{"text":" 增加了"},{"text":"200分","color":"gold"}]
advancement revoke @s only items:add_200