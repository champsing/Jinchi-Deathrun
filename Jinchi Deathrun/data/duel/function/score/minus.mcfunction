# 減分：對戰失敗，獨得/平分減分，不重複
# @s: 1. target 2. attacker
# at: @s

execute if entity @s[team = red] run tag @a[team = red, distance = ..5] add minus_score
execute if entity @s[team = blue] run tag @a[team = blue, distance = ..5] add minus_score

playsound entity.breeze.deflect ambient @a[tag = minus_score] ~ ~ ~ 10 1 1

scoreboard players add @a[tag = minus_score] total_duel 1