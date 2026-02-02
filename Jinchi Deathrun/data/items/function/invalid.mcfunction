# 無效狀態：屏障
advancement revoke @s only items:invalid
execute if score @s item_cd matches 1.. run return fail
execute if entity @s[tag = invalid] run return run tellraw @s [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.items.function.invalid.4_1,color: red}]

scoreboard players set @s item_cd 10
scoreboard players add @s total_item 1
clear @s barrier[custom_data={invalid: true}] 1
tag @s add invalid
scoreboard players add @s total_invalid 1
tellraw @s [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.items.function.invalid.11_1},{translate:jd.duel.function.shock.success.6_4,color:gold}]

# tellraw @a [{translate: jd.empty},{translate:"jd.console",color:gold},{selector:"@s"},{translate:jd.items.function.add_100.5_1},{translate:jd.items.function.invalid.13_2,color:gold}]
