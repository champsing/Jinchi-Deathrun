#---刷新隊伍分數記分板---
#---只要score有更動都要call這個function---

scoreboard players reset 紅隊分數 gameinfo
scoreboard players reset 藍隊分數 gameinfo
execute unless score 準備階段 gamecore matches 1 as @a[team=!spec,tag=!infinity] store result score 紅隊分數 gameinfo run scoreboard players operation @a[team=red] team_score += @s score
execute unless score 準備階段 gamecore matches 1 as @a[team=!spec,tag=!infinity] store result score 藍隊分數 gameinfo run scoreboard players operation @a[team=blue] team_score += @s score