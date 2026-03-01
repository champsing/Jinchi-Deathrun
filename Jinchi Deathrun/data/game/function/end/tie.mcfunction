# 平手進入延長賽

#---聲音提示---
execute as @a at @s run playsound entity.wither.spawn ambient @s ~ ~ ~

#---延長賽分數---
scoreboard players set 延長賽 gamecore 1
scoreboard players display numberformat 剩餘時間 gamecore fixed {translate:jd.game.function.end.tie.8_1, color: "#ff5bbe"}
bossbar set countdown name [{translate:jd.game.function.time.26_1},{translate:jd.game.function.end.tie.8_1, color: "#ff5bbe"}]

title @a times 1s 4s 1s
title @a title {translate:jd.game.function.end.tie.8_1,bold:true,color:"#ff5bbe"}
title @a subtitle {translate:jd.game.function.end.tie.13_1,bold:true}
tellraw @a [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.game.function.end.tie.14_1},{translate:jd.game.function.end.tie.14_2,color: gold}]
