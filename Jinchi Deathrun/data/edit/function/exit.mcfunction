tp @s @e[limit = 1, type = marker, tag = lobby]
scoreboard objectives setdisplay sidebar menu
clear @a

execute if score 遊戲模式 menu matches 99999 run tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"對戰模式","bold":true,"color":"#a335bc"},{"text":"：雙方在時限內各自與敵方玩家對戰，以全隊分數決勝負。"}]
execute if score 遊戲模式 menu matches 99998 run tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"捍衛模式","bold":true,"color":"#61ff9b"},{"text":"：雙方在時限內盡可能待在對方陣地範圍，以全隊待在對方陣地時間總和決勝負。"}]
execute as @e[type = armor_stand, tag = treasure_point] run data merge entity @s {Glowing:0b,CustomNameVisible:0b}
scoreboard players set @e[type = marker, tag = lobby] mode 2