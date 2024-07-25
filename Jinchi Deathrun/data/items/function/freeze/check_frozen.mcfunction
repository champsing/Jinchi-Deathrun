# 檢查凍結資格
# ticked, condition: @a[scores={check_for_freeze=1}] exists.
# @s: @a[scores={check_for_freeze=1}]
# at: @a[scores={check_for_freeze=1}]

#---面前玩家已被凍結--
execute if entity @s[tag = frozen] on attacker run return run tellraw @s ["",{"text":">> ","color":"gold"},{"text": "該玩家已被凍結","color": "red"}]

function items:freeze/freeze

#---排程解除凍結---
schedule function items:freeze/restore_from_frozen 10s

#---成功了就可以結束檢查凍結---
scoreboard players reset @a[scores={check_for_freeze=1}] check_for_freeze

execute on attacker run tag @s add success_freeze_person

# 因為 @s 不能sort，所以：
# @n[tag = success_freeze_person] 距離最近一位有success_freeze_person的實體
# @n[tag = frozen] 距離最近一位有frozen的實體

execute if entity @n[tag = success_freeze_person] run tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"selector":"@n[tag = success_freeze_person]"},{"text":"使用了"},{"text":"凍結道具","color":"gold"},{"selector":""},{"text":"你已被凍結無法移動"},{"text":"10秒","color":"gold"}]
execute if entity @n[tag = success_freeze_person] run tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"selector":"@n[tag = success_freeze_person]"},{"text":"使用了"},{"text":"凍結道具","color":"gold"},{"selector":"@n[tag = frozen]"},{"text":" 已被凍結無法移動"},{"text":"10秒","color":"gold"}]