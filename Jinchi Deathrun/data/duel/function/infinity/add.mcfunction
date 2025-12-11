execute if entity @s[team = red] run scoreboard players add 紅隊陣地 score 1000
execute if entity @s[team = blue] run scoreboard players add 藍隊陣地 score 1000

function duel:invalid
playsound entity.guardian.hurt ambient @s