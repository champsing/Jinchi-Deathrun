#---平手---
execute unless score 延長賽 gamecore matches 1 if score 藍隊分數 gameinfo = 紅隊分數 gameinfo run return run function game:end/tie

#---正常結算---

#---時間到紅隊高---
execute unless score 目標分數 menu matches -1 if score 紅隊分數 gameinfo > 藍隊分數 gameinfo run return run function game:end/red
#---時間到藍隊高---
execute unless score 目標分數 menu matches -1 if score 藍隊分數 gameinfo > 紅隊分數 gameinfo run return run function game:end/blue

#---無限結算---
execute if score 目標分數 menu matches -1 if score 紅隊分數 gameinfo > 藍隊分數 gameinfo run return run function game:end/red
execute if score 目標分數 menu matches -1 if score 藍隊分數 gameinfo > 紅隊分數 gameinfo run return run function game:end/blue