#---不是大廳模式---
execute if score 操作模式 system matches 1 run return run tellraw @s ["",{text:">> ",color:gold},{text:"您目前處於編輯模式。請退出"},{text:"編輯模式",bold:true,color:gold},{text:"更改設定。"}]
execute if score 操作模式 system matches 3 run return run tellraw @s ["",{text:">> ",color:gold},{text:"遊戲目前已經開始。請"},{text:"結束遊戲",bold:true,color:gold},{text:"後再更改設定。"}]

#---給予反應---
execute positioned as @e[type = interaction, tag = initial_interaction] run particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.3 3 normal
execute if entity @s[advancements = {settings:interact/initial = true}] run playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ 1 0.7 1
execute if entity @s[advancements = {settings:attack/initial = true}] run playsound block.medium_amethyst_bud.break master @s ~ ~ ~ 1 0.8 1

#---攻擊/互動---
execute if entity @s[advancements = {settings:interact/target = true}, team = blue] run tellraw @s ["",{text:">> ",color:gold},{text:"您已經加入"},{text:"藍隊", color: blue},{text:"了。"}]
execute if entity @s[advancements = {settings:attack/target = true}, team = red] run tellraw @s ["",{text:">> ",color:gold},{text:"您已經加入"},{text:"紅隊", color: red},{text:"了。"}]
execute if entity @s[advancements = {settings:interact/target = true}, team = !blue] run team join blue @s
execute if entity @s[advancements = {settings:attack/target = true}, team = !red] run team join red @s

#---告知結果---
tellraw @s[team = blue] ["",{text:">> ",color:gold},{text:"您已加入"},{text:"藍隊", color: blue}]
tellraw @s[team = red] ["",{text:">> ",color:gold},{text:"您已加入"},{text:"紅隊", color: red}]

advancement revoke @s only settings:interact/join
advancement revoke @s only settings:attack/join