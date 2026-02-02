# 解除無效狀態：史萊姆球
advancement revoke @s only items:clear_invalid
execute if score @s item_cd matches 1.. run return fail
execute if entity @s[tag = !invalid] run return run tellraw @s [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.items.function.clear_invalid.4_1,color: red}]

scoreboard players set @s item_cd 10
scoreboard players add @s total_item 1
clear @s[tag = invalid] slime_ball[custom_data={"invalid": false}] 1
tag @s remove invalid
tellraw @s [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.items.function.clear_invalid.10_1},{translate:jd.duel.function.shock.success.6_4,color:gold}]

# tellraw @a [{translate: jd.empty},{translate:"jd.console",color:gold},{selector:"@s"},{translate:jd.items.function.add_100.5_1},{translate:jd.items.function.clear_invalid.12_2,color:gold}]
