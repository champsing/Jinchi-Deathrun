advancement revoke @s only game:start
execute positioned as @e[type = interaction, tag = start] run particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.3 3 normal
playsound block.medium_amethyst_bud.break master @s ~ ~ ~ 1 0.8 1

#---不是創造---
execute as @s[gamemode = !creative] run return run tellraw @s ["",{text:">> ",color:gold},{text:"您沒有權限開始遊戲。請使用"},{text:"創造模式",bold:true,color:gold},{text:"開始遊戲。"}]

#---人數不足---
execute unless score 紅隊人數 menu matches 1.. unless score 藍隊人數 menu matches 1.. run return run function game:player_insufficient

execute if score 操作模式 system matches 1 run return run tellraw @s ["",{text:">> ",color:gold},{text:"您目前處於編輯模式。請退出"},{text:"編輯模式",bold:true,color:gold},{text:"再開始遊戲。"}]
execute if score 操作模式 system matches 3 run return run tellraw @s ["",{text:">> ",color:gold},{text:"遊戲目前已經開始。請"},{text:"結束遊戲",bold:true,color:gold},{text:"後才能再開始新遊戲。"}]

execute if score 操作模式 system matches 2 run function game:prepare/emerald
