#---REGION：某一隊沒人---
execute unless score 勝負已分 gamecore matches 1 unless entity @a[team = blue] run function game:end/red
execute unless score 勝負已分 gamecore matches 1 unless entity @a[team = red] run function game:end/blue
