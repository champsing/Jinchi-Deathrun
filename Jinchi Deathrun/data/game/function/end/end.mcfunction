# 結束遊戲：勝方確定才執行

effect give @a resistance infinite 150 true
scoreboard players set 勝負已分 system 1
schedule clear game:time
schedule clear stamina:regain
schedule clear items:treasure/generate_treasure

# -----------------------------------------
# 紅隊分數: 紅隊分數 gameinfo
# 藍隊分數: 藍隊分數 gameinfo
# -----------------------------------------
# 對戰好手: @a[scores={top_duel=0}]  (@a[scores={top_duel=0}] total_duel)
# 大富豪家: @a[scores={top_score=0}]  (@a[scores={top_score=0}] score)
# -----------------------------------------

tellraw @a ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n>> ","bold":true,"color":"gold"}]
tellraw @a ["",{"text":"-----------------------------------------\n","bold":true,"color":"gold"}]
tellraw @a [{"text":"紅隊分數: ","color":"red"},{"score":{"name":"紅隊分數","objective":"gameinfo"},"color":"red"},{"text":"\n藍隊分數: ","color":"blue"},{"score":{"name":"藍隊分數","objective":"gameinfo"},"color":"blue"}]
tellraw @a [{"text":"\n-----------------------------------------\n","bold":true,"color":"gold"}]
tellraw @a [{"text":"對戰好手: ","color":"aqua"},{"selector":"@a[scores={top_duel=0}]"},{"text":"  (","color":"aqua"},{"score":{"name":"@p[scores={top_duel=0}]","objective":"total_duel"},"color":"aqua"}]
tellraw @a [{"text":")\n大富豪家: ","color":"aqua"},{"selector":"@a[scores={top_score=0}]"},{"text":"  (","color":"aqua"},{"score":{"name":"@a[scores={top_score=0}]","objective":"score"},"color":"aqua"},{"text":")","color":"aqua"}]
tellraw @a [{"text":"\n-----------------------------------------","bold":true,"color":"gold"}]
tellraw @a {"text":"[點擊返回大廳並重置遊戲]","color":"aqua", "bold": true,"clickEvent": {"action": "run_command","value": "/function game:initialize"}}