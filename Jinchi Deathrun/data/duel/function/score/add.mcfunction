# 加分：對戰勝利，獨得/平分加分
# @s: 1. target 2. attacker
# at: @s

execute if entity @s[team = red] run tag @a[team = red, distance = ..5] add add_score
execute if entity @s[team = blue] run tag @a[team = blue, distance = ..5] add add_score

execute if entity @s[team = red] run scoreboard players add 紅隊陣地 score 50
execute if entity @s[team = blue] run scoreboard players add 藍隊陣地 score 50
execute if entity @s[team = red, tag = duel.first_blood] run scoreboard players add 紅隊陣地 score 500
execute if entity @s[team = blue, tag = duel.first_blood] run scoreboard players add 藍隊陣地 score 500

playsound entity.pillager.celebrate ambient @a[tag = add_score] ~ ~ ~ 10 1 1
tellraw @a[tag = add_score] ["",{text:">> ",color:gold},{text:"你因"},{text:"對戰勝利",color:green},{text:"，獲得"},{text:"50",color:gold},{text:"分"}]
tellraw @a[tag = add_score, tag = duel.first_blood] ["",{text:">> ",color:gold},{text:"你是本場"},{text:"第一位發起對戰並勝利",color:green},{text:"的人，獲得先手優勢"},{text:"500",color:gold},{text:"分"}]

tag @a[tag = add_score] remove add_score
function duel:invalid