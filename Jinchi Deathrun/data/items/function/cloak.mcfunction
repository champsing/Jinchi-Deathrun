# 隱形：遮光玻璃
advancement revoke @s only items:cloak
execute if score @s item_cd matches 1.. run return fail
execute if predicate items:cloaked run return run tellraw @s [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.items.function.cloak.4_1,color: red}]

scoreboard players set @s item_cd 10
scoreboard players add @s total_item 1
clear @s tinted_glass[custom_data={cloak: true}] 1
effect give @s invisibility 15 1 true
tellraw @s [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.items.function.cloak.10_1},{translate:jd.items.function.cloak.10_2,color:gold},{translate:jd.items.function.cloak.10_3},{translate:jd.items.function.cloak.10_4,color:gold}]
