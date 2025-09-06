# 護盾：盾
advancement revoke @s only items:shield
execute if score @s item_cd matches 1.. run return fail
execute if predicate items:has_shield run return run tellraw @s ["",{text:">> ",color:gold},{text: "你目前已有護盾效果",color: red}]

scoreboard players set @s item_cd 5
scoreboard players add @s total_item 1
clear @s shield[custom_data={shield: true}] 1
item replace entity @s armor.head with shield[minecraft:banner_patterns=[{color: "red", pattern:"stripe_downleft"}],base_color="cyan",custom_data={shield: true},enchantments={binding_curse: 1}]

#---排程恢復原狀---
schedule function items:shield/restore 10s
tellraw @a ["",{text:">> ",color:gold},{selector:"@s"},{text:"你使用了"},{text:"護盾",color:gold},{text:" 無法被發起對戰"},{text:"10秒",color:gold}]
