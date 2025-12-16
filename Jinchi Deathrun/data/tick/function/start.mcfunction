#---這時候任何人都不該操作設定、開始遊戲和進入編輯模式---
advancement revoke @a from settings:root
advancement revoke @a only edit:edit

#---只要mode == 3就常駐運行---
execute as @a[team = !spec] at @s if score 倒數 gamecore matches 0..5 run function game:prepare/teleport
execute as @a[tag = !playing] run function start:spectate
execute as @a[team = spec] at @s if entity @s[y = -120,dy = 40] run tp @s @n[tag = center]
execute as @a[scores = {death = 1}] at @s run function game:death
execute unless score 勝負已分 gamecore matches 1 as @a[team = !spec] at @s run function game:border
execute as @a[scores = {join = 1..}] run function game:join
effect give @a saturation infinite 0 true
execute as @a[team = !spec] run function game:emerald

#---準備階段actionbar：預告進場個人分數---
execute if score 準備階段 gamecore matches 1 as @a[team = !spec] run title @s actionbar [{text:"進場時個人分數: ",bold:true,color:aqua},{score:{name:"@s",objective:score}}]

#---遊戲階段跑start
execute unless score 準備階段 gamecore matches 1 run function #tick:start

#---任務---
# execute if score 任務倒數 gamecore matches 1.. run function event:tick