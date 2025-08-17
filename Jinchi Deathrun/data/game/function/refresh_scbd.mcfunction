#---刷新隊伍分數記分板---
#---只要score有更動都要call這個function---

scoreboard players set 紅隊分數 gameinfo 0
scoreboard players set 藍隊分數 gameinfo 0
execute unless score 準備階段 gamecore matches 1 as @a[team = !spec] run scoreboard players operation 紅隊分數 gameinfo += @s[team = red] score
execute unless score 準備階段 gamecore matches 1 as @a[team = !spec] run scoreboard players operation 藍隊分數 gameinfo += @s[team = blue] score