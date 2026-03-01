# 無敵陣地：基岩
advancement revoke @s only items:invulnerable_base
execute if score @s item_cd matches 1.. run return fail
execute if entity @n[tag = red_base, tag = invulnerable, type = interaction] run return run tellraw @s[team = red] [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.items.function.invulnerable_base.4_1,color: red}]
execute if entity @n[tag = blue_base, tag = invulnerable, type = interaction] run return run tellraw @s[team = blue] [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.items.function.invulnerable_base.4_1,color: red}]

scoreboard players set @s item_cd 10
scoreboard players add @s total_item 1
clear @s bedrock[custom_data={invulnerable_base: true}] 1
execute if entity @s[team = blue] run tag @n[tag = blue_base, type = interaction] add invulnerable
execute if entity @s[team = red] run tag @n[tag = red_base, type = interaction] add invulnerable

#---排程恢復原狀---
execute if entity @s[team = red] run schedule function base:restore_invulnerable/red 20s
execute if entity @s[team = blue] run schedule function base:restore_invulnerable/blue 20s
tellraw @a [{translate: jd.empty},{translate:"jd.console",color:gold},{selector:"@s"},{translate:jd.items.function.add_100.5_1},{translate:jd.items.function.invulnerable_base.16_2,color:gold},{translate:jd.items.function.invulnerable_base.16_3},{translate:jd.items.function.invulnerable_base.16_4,color:gold}]
