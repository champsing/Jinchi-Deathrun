execute as @a[team=!spec] run title @s actionbar [{"text":"個人分數: ","bold":true,"color":"aqua"},{"score":{"name":"@s","objective":"score"}},{"text":"    團隊分數: ","bold":true,"color":"aqua"},{"score":{"name":"@s","objective":"team_score"}}]
execute as @a[team=!spec,tag=infinity] run title @s actionbar [{"text":"個人分數: 無限","bold":true,"color":"aqua"},{"score":{"name":"@s","objective":"score"}}]

#---準備時間---
execute if score 準備時間 list2 matches 1.. store result bossbar prepare value run scoreboard players remove 準備時間 list2 1
execute if score 準備時間 list2 matches 0 run function game:prepare

#---開始---
execute as @a[team=!spec] at @s if score 倒數 list2 matches 0..5 run function game:teleport
execute as @a[tag=!start] run function start:spectate
execute as @a[team=spec] at @s if entity @s[y=-120,dy=40] run tp @s @e[tag=middle,limit=1]
execute if score 遊戲時間 list matches 1.. as @a[team=!spec] at @s run function game:border
execute as @a[scores={join=1..}] run function game:join

#---合體---
execute as @a[team=red] at @s store result score @s teammate if entity @a[team=red,distance=..5]
execute as @a[team=blue] at @s store result score @s teammate if entity @a[team=blue,distance=..5]
execute as @a[team=!spec] unless score @s teammate = @s teammate2 run function game:teaming

#---道具---
execute as @a[scores={item=1..}] at @s run function item:use

#---陣地---
execute as @a[team=red] at @s if entity @e[team=red,tag=base,distance=..1] run function base:infinity
execute as @a[team=blue] at @s if entity @e[team=blue,tag=base,distance=..1] run function base:infinity
execute as @a[team=red] at @s unless entity @e[team=red,tag=base,distance=..1] run tag @s remove infinity
execute as @a[team=blue] at @s unless entity @e[team=blue,tag=base,distance=..1] run tag @s remove infinity
scoreboard players remove @e[scores={base=1..}] base 1
execute at @e[scores={base=0}] if block ~ ~ ~ bedrock run fill ~ ~ ~ ~ ~10 ~ iron_block

#---體力---
execute as @a[team=!spec] if predicate stamina:consume run function stamina:consume
execute as @a[team=!spec] if predicate stamina:food run function stamina:food
execute as @a[scores={stamina_bow=1..}] at @s run function stamina:bow
execute as @a[scores={stamina_crossbow=1..}] at @s run function stamina:bow
execute as @a[team=!spec,scores={stamina=..85}] unless score @s stamina = @s stamina_attack run function stamina:attack
execute as @a[team=!spec,scores={stamina=..39}] run function stamina:effect
scoreboard players set @a[scores={stamina=101..}] stamina 100

#---死亡---
execute as @a[scores={death=1,health=20..}] at @s if entity @e[tag=spawn,distance=..1] run function death:effect
execute as @e[type=villager,tag=grave] at @s run function inventory:grave/save
execute as @e[type=villager,tag=Ginv,nbt={PortalCooldown:0}] at @s run function inventory:grave/item
execute as @e[type=item] at @s if data entity @s Item.tag.drop run function inventory:random/set


#---任務---
execute if score 任務倒數 list2 matches 1.. run function event:tick


#---爆破物---
execute at @e[type=egg] run fill ~1 ~1 ~1 ~-1 ~ ~-1 fire keep
execute as @e[type=chicken] at @s run tp @s ~ ~-999 ~
execute at @e[type=snowball] run kill @e[type=area_effect_cloud,tag=grenade_cloud,limit=1,sort=nearest]
execute as @e[type=area_effect_cloud,tag=grenade_cloud] at @s run function bomb:grenade/summon
execute as @e[type=snowball] at @s run function bomb:grenade/path
execute as @e[type=item,tag=grenade,nbt={PortalCooldown:0}] at @s run function bomb:grenade/explode
execute as @e[type=armor_stand,tag=landmine_point] at @s run function bomb:landmine/summon
execute as @e[type=armor_stand,tag=landmine,nbt={PortalCooldown:0}] at @s at @a[distance=..1,team=!spec,gamemode=survival] run function bomb:landmine/explode
execute as @e[type=arrow,nbt={inGround:1b}] at @s if data entity @s Potion run function bomb:arrow

#---結算---
execute if score 紅隊分數 list >= 目標分數 menu run function game:end/red
execute if score 藍隊分數 list >= 目標分數 menu run function game:end/blue