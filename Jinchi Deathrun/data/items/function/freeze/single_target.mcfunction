# 凍結-單人
execute if entity @s[tag = frozen] on attacker run return run tellraw @s [{text: "該人已被凍結，無法使用單人凍結道具", color: red}]

tag @s add item10_target
execute on attacker run function items:freeze/single_attacker
function items:freeze/freeze
tag @s remove item10_target