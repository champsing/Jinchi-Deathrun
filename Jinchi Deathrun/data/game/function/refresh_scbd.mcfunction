#---刷新隊伍分數記分板---
#---只要score有更動都要call這個function---

scoreboard players set 紅隊分數 gameinfo 0
scoreboard players operation 紅隊分數 gameinfo += 紅隊陣地 score
execute as @a[team = red] run scoreboard players operation 紅隊分數 gameinfo += @s score

scoreboard players set 藍隊分數 gameinfo 0
scoreboard players operation 藍隊分數 gameinfo += 藍隊陣地 score
execute as @a[team = blue] run scoreboard players operation 藍隊分數 gameinfo += @s score