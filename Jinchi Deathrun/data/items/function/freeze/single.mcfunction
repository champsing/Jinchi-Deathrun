# 凍結-單人
# @s 使用單人凍結的人
# at: Server

advancement revoke @s only items:freeze_single
execute if score @s item_cd matches 1.. run return fail


scoreboard players set @s item_cd 5
clear @s nether_star[custom_data={"freeze": "single"}] 1

# 劇本:
# 先讓target去檢查frozen
# 5秒後不管有沒有凍結到人，一律結束檢查frozen，如果沒凍結到人對attacker報錯
# 
# 要成功的話: 
# 1. target要抓的到人
# 2. check_frozen沒有return => attacker成功凍結到target
# 
# 失敗條件:
# 1. 5秒內 @s 根本沒攻擊人 => target找不到人
# 2. target處在凍結狀態 => check_frozen會return

#---單人的凍結過程到items:freeze/check_frozen (tick)裡面去執行---
execute on target run scoreboard players set @s check_for_freeze 1

#---5秒後檢查有沒有凍結到人---
schedule function items:freeze/await_5_seconds 5s