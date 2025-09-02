# 隱形：遮光玻璃
advancement revoke @s only items:cloak
execute if score @s item_cd matches 1.. run return fail
execute if predicate items:cloaked run return run tellraw @s ["",{text:">> ",color:gold},{text: "你目前已是隱形狀態",color: red}]

scoreboard players set @s item_cd 5
scoreboard players add @s total_item 1
clear @s tinted_glass[custom_data={cloak: true}] 1
effect give @s invisibility 30 1 true
tellraw @s ["",{text:">> ",color:gold},{text:"你使用了"},{text:"隱形道具",color:gold},{text:" 獲得隱形效果"},{text:"30秒",color:gold}]
