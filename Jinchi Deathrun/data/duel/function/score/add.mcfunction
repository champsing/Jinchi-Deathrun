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
tellraw @a[tag = add_score, tag = !duel.first_blood] ["",{text:">> ",color:gold},{text:"你與"},{selector:"@a[tag = minus_score]"},{text:"對戰勝利",color:green},{text:"，己方陣地獲得"},{text:"50",color:gold},{text:"分"}]
tellraw @a[tag = add_score, tag = duel.first_blood] ["",{text:">> ",color:gold},{text:"你與"},{selector:"@a[tag = minus_score]"},{text:"對戰勝利",color:green}]
tellraw @a[tag = add_score, tag = duel.first_blood] ["",{text:">> ",color:gold},{text:"由於你是本場"},{text:"第一位發起對戰並勝利",color:green},{text:"的人，己方陣地獲得先手優勢"},{text:"500",color:gold},{text:"分"}]

function duel:invalid