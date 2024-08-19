give @r[team=red] emerald[item_name='"§c10分"'] 1
give @r[team=blue] emerald[item_name='"§c10分"'] 1
scoreboard players remove 初始分數綠寶石 system 10
execute if score 初始分數綠寶石 system matches 10.. run function game:prepare/give_emerald
