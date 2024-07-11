$give @r[team=red] emerald{display:{Name:'{"text":"§c10分"}'}} $(initial_score_emerald)
$give @r[team=blue] emerald{display:{Name:'{"text":"§c10分"}'}} $(initial_score_emerald)
scoreboard players remove 初始分數 list2 10
execute if score 初始分數 list2 matches 10.. run function game:emerald