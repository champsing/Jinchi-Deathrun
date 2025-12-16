title @a times 1s 4s 1s
title @a title {text:"遊戲結束",bold:true,color:"blue"}
title @a subtitle {text:"藍隊獲勝",bold:true,color:"blue"}
team modify blue prefix {text:"[勝利者]",color:"blue"}
function game:end/end

# 紅隊接受遊戲的制裁
effect clear @a[team = red] resistance
effect give @a[team = blue] resistance 5 5 true
execute at @a[team = red] run summon lightning_bolt ~ ~ ~
