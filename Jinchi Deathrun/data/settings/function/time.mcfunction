#---不是大廳模式---
execute if score 操作模式 system matches 1 run return run tellraw @s ["",{text:">> ",color:gold},{text:"您目前處於編輯模式。請退出"},{text:"編輯模式",bold:true,color:gold},{text:"更改設定。"}]
execute if score 操作模式 system matches 3 run return run tellraw @s ["",{text:">> ",color:gold},{text:"遊戲目前已經開始。請"},{text:"結束遊戲",bold:true,color:gold},{text:"後再更改設定。"}]

#---給予反應---
execute positioned as @e[type = interaction, tag = time_interact] run particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.3 3 normal
execute if entity @s[advancements = {settings:interact/time = true}] run playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ 1 0.7 1
execute if entity @s[advancements = {settings:attack/time = true}] run playsound block.medium_amethyst_bud.break master @s ~ ~ ~ 1 0.8 1

#---不是創造---
execute as @s[gamemode = !creative] run return run tellraw @s[gamemode = !creative] ["",{text:">> ",color:gold},{text:"您沒有權限更動這項設定。請使用"},{text:"創造模式",bold:true,color:gold},{text:"更改設定。"}]

#---攻擊/互動---
#---單位: 秒---
execute if entity @s[advancements = {settings:interact/time = true}] run scoreboard players add 遊戲時間 menu 300
execute if entity @s[advancements = {settings:attack/time = true}] run scoreboard players remove 遊戲時間 menu 300

#---超過範圍---
# min 15分鐘 max 2小時
execute if score 遊戲時間 menu matches 1500.. run scoreboard players set 遊戲時間 menu 600
execute if score 遊戲時間 menu matches ..300 run scoreboard players set 遊戲時間 menu 1200
scoreboard players operation 遊戲時間分鐘 system = 遊戲時間 menu
scoreboard players operation 遊戲時間分鐘 system /= 一分鐘 readonly
#---結果---
execute as @e[tag = time_value] run data modify entity @s text set value [{score:{name:"遊戲時間分鐘",objective:"system"}},{text:" 分鐘"}]
tellraw @a ["",{text:">> ",color:gold},{text:"遊戲時間設為 "},{score:{name:"遊戲時間分鐘",objective:"system"},bold:true,color:gold},{text:" 分鐘"}]

advancement revoke @s only settings:interact/time
advancement revoke @s only settings:attack/time