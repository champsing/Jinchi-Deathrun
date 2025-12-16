title @a times 1s 4s 1s
title @a title {text:"遊戲結束",bold:true,color:red}
title @a subtitle {text:"紅隊獲勝",bold:true,color:red}
team modify red prefix {text:"[勝利者]",color:red}
function game:end/end

# 藍隊接受遊戲的制裁
effect clear @a[team = blue] resistance
effect give @a[team = red] resistance 5 5 true
execute at @a[team = blue] run summon lightning_bolt ~ ~ ~
