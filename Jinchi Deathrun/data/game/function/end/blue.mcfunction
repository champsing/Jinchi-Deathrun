title @a times 1s 4s 1s
title @a title {translate:jd.game.function.end.blue.2_1,bold:true,color:"blue"}
title @a subtitle {translate:jd.game.function.end.blue.3_1,bold:true,color:"blue"}
team modify blue prefix {translate:jd.game.function.end.blue.4_1,color:"blue"}
function game:end/end

# 紅隊接受遊戲的制裁
effect clear @a[team = red] resistance
effect give @a[team = blue] resistance 5 5 true
execute at @a[team = red] run summon lightning_bolt ~ ~ ~
gamemode spectator @a[team = red]