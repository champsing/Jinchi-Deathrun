# 5秒後結束前檢查
# @s: attacker
# at: Server

#---時間到一律結束檢查凍結---
scoreboard players reset @a[scores={check_for_freeze=0}] check_for_freeze

#---@s 沒有成功凍結人---
execute unless entity @s[tag = success_freeze_person] run tellraw @s ["",{"text":">> ","color":"gold"},{"text": "你沒有在5秒內攻擊人，道具已失效","color": "red"}]

#---到這裡success_freeze_person才能拿掉，不然上面unless entity @s[tag = success_freeze_person]就一定會成功---
tag @s remove success_freeze_person

#---到這裡單人凍結才正式結束---