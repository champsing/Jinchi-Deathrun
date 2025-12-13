# 凍結-全體
advancement revoke @s only items:freeze_all
execute if score @s item_cd matches 1.. run return run function items:cooldown
execute if entity @s[team = blue] unless entity @a[team = red, tag = !frozen] run return run tellraw @s ["",{text:">> ",color:gold},{text: "敵方全體已被凍結",color: red}]
execute if entity @s[team = red] unless entity @a[team = blue, tag = !frozen] run return run tellraw @s ["",{text:">> ",color:gold},{text: "敵方全體已被凍結",color: red}]

clear @s blue_ice[custom_data={"freeze": "all"}] 1
scoreboard players set @s item_cd 5

execute if entity @s[team = red] as @a[team = blue, tag = !frozen] run function items:freeze/freeze
execute if entity @s[team = blue] as @a[team = red, tag = !frozen] run function items:freeze/freeze

tellraw @a ["",{text:">> ",color:gold},{selector:"@s"},{text:"使用了"},{text:"凍結道具",color:gold},{text:" 所有敵方玩家已被凍結無法移動"},{text:" 10 秒",color:gold}]