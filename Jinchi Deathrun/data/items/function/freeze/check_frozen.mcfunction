# 檢查凍結資格
# ticked, condition: @a[tag = check_for_frozen] exists.
# @s: @a[tag = check_for_frozen]
# at: @a[tag = check_for_frozen]

#---面前玩家已被凍結--
execute if entity @s[tag = frozen] on attacker run return run tellraw @s ["",{"text":">> ","color":"gold"},{"text": "該玩家已被凍結","color": "red"}]

function items:freeze/freeze

#---成功了就可以結束檢查凍結---
tag @s[tag = check_for_frozen] remove check_for_frozen

execute on attacker run tag @s add success_freeze_person

# 因為 @s 不能sort，所以：
# @n[tag = success_freeze_person] 距離最近一位有success_freeze_person的實體
# @n[tag = frozen] 距離最近一位有frozen的實體

execute if entity @n[tag = success_freeze_person] run tellraw @s ["",{"text":">> ","color":"gold"},{"selector":"@n[tag = success_freeze_person]"},{"text":"使用了"},{"text":"凍結道具","color":"gold"},{"selector":""},{"text":"你已被凍結無法移動"},{"text":"10秒","color":"gold"}]
execute if entity @n[tag = success_freeze_person] run tellraw @a ["",{"text":">> ","color":"gold"},{"selector":"@n[tag = success_freeze_person]"},{"text":"使用了"},{"text":"凍結道具","color":"gold"},{"selector":"@n[tag = frozen]"},{"text":" 已被凍結無法移動"},{"text":"10秒","color":"gold"}]