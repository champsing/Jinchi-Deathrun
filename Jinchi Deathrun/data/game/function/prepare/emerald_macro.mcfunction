$give @r[team=red] emerald[item_name='"§c10分"'] $(initial_score_emerald)
$give @r[team=blue] emerald[item_name='"§c10分"'] $(initial_score_emerald)
scoreboard players remove 初始分數 system 10
execute if score 初始分數 system matches 10.. run function game:prepare/emerald_macro
