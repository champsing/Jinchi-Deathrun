# 決定對戰結果
# @s: attacker[tag = !invalid,tag = !infinity]
# at: attacker

execute if score @s team_score > @n[tag = attack] team_score run function duel:win
execute if score @s team_score < @n[tag = attack] team_score run function duel:lose
execute if score @s team_score = @n[tag = attack] team_score run function duel:tie

tellraw @a[tag = add_score, tag = !duel.first_blood] [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.duel.function.success.9_1},{selector:"@a[tag = minus_score]"},{translate:jd.duel.function.success.9_2,color:green},{translate:jd.duel.function.success.9_3},{translate:jd.duel.function.success.9_4,color:gold},{translate:jd.duel.function.success.9_5}]
tellraw @a[tag = add_score, tag = duel.first_blood] [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.duel.function.success.9_1},{selector:"@a[tag = minus_score]"},{translate:jd.duel.function.success.9_2,color:green}]
tellraw @a[tag = add_score, tag = duel.first_blood] [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.duel.function.success.11_1},{translate:jd.duel.function.success.11_2,color:green},{translate:jd.duel.function.success.11_3},{translate:jd.duel.function.success.11_4,color:gold},{translate:jd.duel.function.success.9_5}]
execute if entity @a[tag = add_score, tag = duel.first_blood] run tellraw @a[tag = minus_score] [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.duel.function.success.9_1},{selector:"@a[tag = add_score]"},{translate:jd.duel.function.success.12_2,color:red},{translate:jd.duel.function.success.12_3},{translate:jd.duel.function.success.11_4,color:gold},{translate:jd.duel.function.success.9_5}]
tellraw @a[tag = minus_score] [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.duel.function.success.9_1},{selector:"@a[tag = add_score]"},{translate:jd.duel.function.success.12_2,color:red},{translate:jd.duel.function.success.13_3},{translate:jd.duel.function.success.9_4,color:gold},{translate:jd.duel.function.success.9_5}]

tag @a[tag = minus_score] remove minus_score
tag @a[tag = add_score] remove add_score