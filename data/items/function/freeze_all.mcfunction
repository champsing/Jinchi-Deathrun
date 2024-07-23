# 緩速-全體
advancement revoke @s only items:freeze_all
execute if score @s item_cd matches 1.. run return fail
scoreboard players set @s item_cd 5
execute as @a[team = red] if predicate items:frozen run return run tellraw @s[team = blue] ["",{"text":">> ","color":"gold"},{"text": "敵方全體已在緩速","color": "red"}]
execute as @a[team = blue] if predicate items:frozen run return run tellraw @s[team = red] ["",{"text":">> ","color":"gold"},{"text": "敵方全體已在緩速","color": "red"}]

clear @s nether_star[custom_data={"freeze": "all"}] 1
execute if entity @s[team=red] run effect give @a[team=blue] slowness 10 0 true
execute if entity @s[team=blue] run effect give @a[team=red] slowness 10 0 true
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"selector":"@s"},{"text":"使用了"},{"text":"緩速道具","color":"gold"},{"text":" 所有敵方玩家緩速"},{"text":"10秒","color":"gold"}]