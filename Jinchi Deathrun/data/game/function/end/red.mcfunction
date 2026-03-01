title @a times 1s 4s 1s
title @a title {translate:jd.game.function.end.blue.2_1,bold:true,color:red}
title @a subtitle {translate:jd.game.function.end.red.3_1,bold:true,color:red}
team modify red prefix {translate:jd.game.function.end.blue.4_1,color:red}
function game:end/end

# 藍隊接受遊戲的制裁
effect clear @a[team = blue] resistance
effect give @a[team = red] resistance 5 5 true
execute at @a[team = blue] run summon lightning_bolt ~ ~ ~
gamemode spectator @a[team = blue]
