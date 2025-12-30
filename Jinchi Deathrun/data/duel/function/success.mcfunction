# 決定對戰結果
# @s: attacker[tag = !invalid,tag = !infinity]
# at: attacker

execute if score @s team_score > @n[tag = attack] team_score run function duel:win
execute if score @s team_score < @n[tag = attack] team_score run function duel:lose
execute if score @s team_score = @n[tag = attack] team_score run function duel:tie

tellraw @a[tag = add_score, tag = !duel.first_blood] [{translate: jd.empty},{translate:"jd.console",color:gold},{text:"你與"},{selector:"@a[tag = minus_score]"},{text:"對戰勝利",color:green},{text:"，己方陣地獲得"},{text:"50",color:gold},{text:"分"}]
tellraw @a[tag = add_score, tag = duel.first_blood] [{translate: jd.empty},{translate:"jd.console",color:gold},{text:"你與"},{selector:"@a[tag = minus_score]"},{text:"對戰勝利",color:green}]
tellraw @a[tag = add_score, tag = duel.first_blood] [{translate: jd.empty},{translate:"jd.console",color:gold},{text:"由於你是本場"},{text:"第一位發起對戰並勝利",color:green},{text:"的人，己方陣地獲得先手優勢"},{text:"500",color:gold},{text:"分"}]
execute if entity @a[tag = add_score, tag = duel.first_blood] run tellraw @a[tag = minus_score] [{translate: jd.empty},{translate:"jd.console",color:gold},{text:"你與"},{selector:"@a[tag = add_score]"},{text:"對戰失敗",color:red},{text:"，對方獲得先手優勢，陣地增加"},{text:"500",color:gold},{text:"分"}]
tellraw @a[tag = minus_score] [{translate: jd.empty},{translate:"jd.console",color:gold},{text:"你與"},{selector:"@a[tag = add_score]"},{text:"對戰失敗",color:red},{text:"，對方陣地增加"},{text:"50",color:gold},{text:"分"}]

tag @a[tag = minus_score] remove minus_score
tag @a[tag = add_score] remove add_score