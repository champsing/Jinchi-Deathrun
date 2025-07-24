# 凍結-單人
# @s 被單人凍結的目標
# at: Server

tag @s add item10_target
advancement revoke @s only items:freeze_single_target

#---已經被凍結---
execute if entity @s[tag = frozen] run return run tag @s remove item10_target

function items:freeze/freeze
tag @s remove item10_target

