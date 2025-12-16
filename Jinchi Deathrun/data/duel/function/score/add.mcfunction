# 加分：對戰勝利，獨得/平分加分
# @s: 1. target 2. attacker
# at: @s

execute if entity @s[team = red] run tag @a[team = red, distance = ..5] add add_score
execute if entity @s[team = blue] run tag @a[team = blue, distance = ..5] add add_score

execute if entity @s[team = red, tag = !duel.first_blood] run scoreboard players add 紅隊陣地 score 50
execute if entity @s[team = blue, tag = !duel.first_blood] run scoreboard players add 藍隊陣地 score 50
execute if entity @s[team = red, tag = duel.first_blood] run scoreboard players add 紅隊陣地 score 500
execute if entity @s[team = blue, tag = duel.first_blood] run scoreboard players add 藍隊陣地 score 500

execute if entity @a[tag = add_score, tag = duel.first_blood] run scoreboard players set 先手優勢 gamecore 1

playsound entity.pillager.celebrate ambient @a[tag = add_score] ~ ~ ~ 10 1 1

function duel:invalid