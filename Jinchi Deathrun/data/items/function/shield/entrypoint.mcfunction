# 護盾：盾牌
advancement revoke @s only items:shield
execute if score @s item_cd matches 1.. run return fail
execute if predicate items:has_shield run return run tellraw @s [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.items.function.shield.entrypoint.4_1,color: red}]

scoreboard players set @s item_cd 10
scoreboard players add @s total_item 1
clear @s shield[custom_data={shield: true}] 1
item replace entity @s armor.head with shield[minecraft:banner_patterns=[{color: "red", pattern:"stripe_downleft"}],base_color="cyan",custom_data={shield: true},enchantments={binding_curse: 1}]

#---排程恢復原狀---
scoreboard players set @s shield 10
tellraw @s [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.items.function.cloak.10_1},{translate:jd.items.function.shield.entrypoint.13_2,color:gold},{translate:jd.items.function.shield.entrypoint.13_3},{translate:jd.items.function.shield.entrypoint.13_4,color:gold}]
