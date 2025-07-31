# 被無限玩家陣殺扣分
# @s: target
# at: Server

scoreboard players remove @s score 1000
function game:refresh_scbd

# 如果這時 @s score <= 0，說明陣殺成功
execute if score @s score matches ..0 on attacker run return run scoreboard players add @s total_kill 1

tag @s add invalid
scoreboard players add @s total_invalid 1