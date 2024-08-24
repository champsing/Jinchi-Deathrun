#---紅隊先馳得點---
execute if score 紅隊分數 gameinfo >= 目標分數 menu if score 紅隊分數 gameinfo > 藍隊分數 gameinfo run return run function game:end/red
#---藍隊先馳得點---
execute if score 藍隊分數 gameinfo >= 目標分數 menu if score 藍隊分數 gameinfo > 紅隊分數 gameinfo run return run function game:end/blue