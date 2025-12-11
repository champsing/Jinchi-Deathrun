# 減分：對戰失敗，獨得/平分減分，不重複
# @s: 1. target 2. attacker
# at: @s

execute if entity @s[team = red] run tag @a[team = red, distance = ..5] add minus_score
execute if entity @s[team = blue] run tag @a[team = blue, distance = ..5] add minus_score

playsound entity.breeze.deflect ambient @a[tag = minus_score] ~ ~ ~ 10 1 1
tellraw @a[tag = minus_score] ["",{text:">> ",color:gold},{text:"你因"},{text:"對戰失敗",color:red},{text:"，對方增加"},{text:"50",color:gold},{text:"分"}]

tag @a[tag = minus_score] remove minus_score
scoreboard players add @s total_duel 1