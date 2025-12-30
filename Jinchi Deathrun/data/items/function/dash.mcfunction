# 加速：兔子腳
advancement revoke @s only items:dash
execute if score @s item_cd matches 1.. run return fail
execute if predicate items:speed_2 run return run tellraw @s [{translate: jd.empty},{translate:"jd.console",color:gold},{text: "你目前已是狂奔狀態",color: red}]

scoreboard players set @s item_cd 10
scoreboard players add @s total_item 1
clear @s rabbit_foot[custom_data={dash: true}] 1
effect give @s speed 30 1 true
tellraw @a [{translate: jd.empty},{translate:"jd.console",color:gold},{selector:"@s"},{text:"使用了"},{text:"狂奔道具",color:gold},{text:" 獲得加速II效果"},{text:"30秒",color:gold}]
