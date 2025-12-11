# 開啟對戰
# @s: target
# at: Server
advancement revoke @s only duel:hurt

execute if score @s duel_cd matches 1.. run return fail

execute on attacker run tag @s add attack
execute if score @a[tag = attack , limit = 1] duel_cd matches 1.. run return run tag @a[tag = attack] remove attack

execute unless score 先手優勢 gamecore matches 1 run function duel:first_blood

function duel:check

execute if entity @s[tag = !invalid,tag = !infinity, predicate = !items:has_shield] if entity @a[tag = attack, tag = !invalid,tag = !infinity] at @s run function duel:success

scoreboard players set @a[tag = attack] duel_cd 5
tag @a[tag = attack] remove attack
tag @a[tag = duel.first_blood] remove duel.first_blood