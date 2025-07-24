# 凍結-單人
# @s 使用單人凍結的攻擊者
# at: Server

advancement revoke @s only items:freeze_single_attacker
execute if score @s item_cd matches 1.. run return fail

#---如果該人已被凍結---
# at: @s
execute at @s if entity @n[tag = item10_target, tag = frozen] run return run tellraw @s [{text: "該人已被凍結，無法使用單人凍結道具", color: red}]

scoreboard players set @s item_cd 5
clear @s packed_ice[custom_data={freeze: "single"}] 1

# at: @s
execute at @s run tellraw @a [{text:">> ", color: gold},{selector: "@s"},{text: "使用了"},{text: "凍結-單人", color: gold},{text: "，"},{selector: "@n[tag = item10_target]"},{text: "已被"},{text:"凍結", color: gold},{text: "，無法移動"}]