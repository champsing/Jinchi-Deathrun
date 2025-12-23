#-------強制結束遊戲-------
schedule clear game:prepare/time
schedule clear game:time
schedule clear stamina:regain
schedule clear items:treasure/generate_treasure
schedule clear base:restore_invulnerable/blue
schedule clear base:restore_invulnerable/red
title @a subtitle "已由指令強制結束遊戲"
title @a title {text:"遊戲中止",color: gray}
function game:initialize
tellraw @a ["",{text:">> ",color:gold},{text:"遊戲已經強制結束"}]