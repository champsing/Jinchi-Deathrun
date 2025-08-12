#---刷新隊伍分數記分板---
#---只要score有更動都要call這個function---

scoreboard players reset 紅隊總分 score
scoreboard players reset 藍隊總分 score
execute unless score 準備階段 gamecore matches 1 as @a[team = !spec,tag = !infinity] store result score 紅隊分數 gameinfo run scoreboard players operation 紅隊總分 score += @s[team = red] score
execute unless score 準備階段 gamecore matches 1 as @a[team = !spec,tag = !infinity] store result score 藍隊分數 gameinfo run scoreboard players operation 藍隊總分 score += @s[team = blue] score