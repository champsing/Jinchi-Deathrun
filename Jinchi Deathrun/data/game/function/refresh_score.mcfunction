scoreboard players reset @s score
#借用一下gamecore來存綠寶數量
execute store result score @s gamecore run clear @s emerald 0
scoreboard players operation @s gamecore *= 十倍 readonly
scoreboard players operation @s score += @s gamecore
scoreboard players reset @s gamecore
clear @s emerald
function game:refresh_scbd