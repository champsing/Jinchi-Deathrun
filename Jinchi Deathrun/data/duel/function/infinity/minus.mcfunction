# 被無限玩家陣殺扣分
# @s: target
# at: Server

scoreboard players remove @s score 1000
clear @s emerald 100

function duel:invalid
playsound entity.guardian.hurt ambient @s

# 如果這時 @s score < 0，說明陣殺成功
execute as @s[scores = {score = ..-1}] run function game:score_death