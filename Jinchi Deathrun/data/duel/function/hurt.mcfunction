# 開啟對戰
# @s: target
# at: Server
advancement revoke @s only duel:hurt

execute on attacker run tag @s add attack

execute on attacker run function duel:check
function duel:check

execute if entity @s[tag=!invalid,tag=!infinity] if entity @a[tag = attack,tag=!invalid,tag=!infinity] at @s run function duel:success

tag @a[tag = attack] remove attack