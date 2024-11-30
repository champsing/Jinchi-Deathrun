#---倒數---
execute if score 倒數 gamecore matches 1..5 run title @a title {"score":{"name":"倒數","objective":"gamecore"},"bold":true,"color":"gold"}
#---音效---
execute if score 倒數 gamecore matches 5 as @a at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~ 1 0
execute if score 倒數 gamecore matches 4 as @a at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~ 1 0.6
execute if score 倒數 gamecore matches 3 as @a at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~ 1 0.9
execute if score 倒數 gamecore matches 2 as @a at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1.3
execute if score 倒數 gamecore matches 1 as @a at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1.6
execute if score 倒數 gamecore matches 0 as @a at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~ 1 2
#---倒數---
execute if score 倒數 gamecore matches 1..5 run schedule function game:count 1s
execute if score 倒數 gamecore matches 0..5 run scoreboard players remove 倒數 gamecore 1