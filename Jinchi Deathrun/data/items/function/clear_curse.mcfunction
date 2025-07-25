# 解除詛咒：附魔台
advancement revoke @s only items:clear_curse
execute if score @s item_cd matches 1.. run return fail
execute unless entity @s[tag = frozen] unless predicate items:glowing unless predicate items:shocked run return fail

scoreboard players set @s item_cd 5
scoreboard players add @s total_item 1
clear @s enchanting_table[custom_data={"clear_curse": true}] 1
effect clear @s slowness
effect clear @s glowing
effect clear @s darkness
function items:freeze/restore_from_frozen

tellraw @a ["",{text:">> ",color:gold},{selector:"@s"},{text:"使用了"},{text:"解除詛咒道具",color:gold},{text:" 消除所有"},{text:"負面狀態效果",color:gold}]
