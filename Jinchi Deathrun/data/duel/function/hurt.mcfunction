# 開啟對戰
# @s: target
# at: Server
tag @s add hurt
execute on attacker run tag @s add attack

execute if predicate duel:invalid run function duel:shock
execute on attacker if predicate duel:invalid run function duel:shock
execute if predicate duel:infinity run function duel:infinity
execute on attacker if predicate duel:infinity run function duel:infinity
execute if entity @s[tag=!invalid,tag=!infinity] on attacker if entity @s[tag=!invalid,tag=!infinity] at @s run function duel:success

tag @s remove hurt
tag @a[tag = attack] remove attack
advancement revoke @s only duel:hurt