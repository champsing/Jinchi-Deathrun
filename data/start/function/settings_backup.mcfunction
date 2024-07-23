# 所有人都有settings
# 
# 初始分數
# text_display: initial_title initial_value
# interaction: initial_interact
summon minecraft:text_display ~ ~ ~ {Tags:["settings","initial_title"],text:'{"text":"初始分數","color": "green"}',Rotation:[270f,0f]}
summon minecraft:text_display ~ ~ ~ {Tags:["settings","initial_value"],text:'{"score":{"name":"初始分數","objective":"menu"}}',Rotation:[270f,0f]}
summon minecraft:interaction ~ ~ ~ {Tags:["settings","initial_interact"],Rotation:[270f,0f]}
# 目標分數
# text_display: target_title target_value
# interaction: target_interact
summon minecraft:text_display ~ ~ ~ {Tags:["settings","target_title"],text:'{"text":"目標分數","color": "green"}',Rotation:[270f,0f]}
summon minecraft:text_display ~ ~ ~ {Tags:["settings","target_value"],text:'{"score":{"name":"目標分數","objective":"menu"}}',Rotation:[270f,0f]}
summon minecraft:interaction ~ ~ ~ {Tags:["settings","target_interact"],Rotation:[270f,0f]}
# 時間限制
# text_display: time_title time_value
# interaction: time_interact
summon minecraft:text_display ~ ~ ~ {Tags:["settings","time_title"],text:'{"text":"時間限制","color": "green"}',Rotation:[270f,0f]}
summon minecraft:text_display ~ ~ ~ {Tags:["settings","time_value"],text:'{"score":{"name":"時間限制","objective":"menu"}}',Rotation:[270f,0f]}
summon minecraft:interaction ~ ~ ~ {Tags:["settings","time_interact"],Rotation:[270f,0f]}
# 隨機分隊 
# text_display: team_title team_instruct
# interaction: team_interact
summon minecraft:text_display ~ ~ ~ {Tags:["settings","team_title"],text:'[{"text":"隨機","color":"red"},{"text":"分隊","bold":true,"color":"blue"}]',Rotation:[270f,0f]}
summon minecraft:interaction ~ ~ ~ {Tags:["settings","team_interact"],Rotation:[270f,0f]}
summon minecraft:text_display ~ ~ ~ {Tags:["settings","team_instruct"],text:'{"text":"右鍵分隊"}',Rotation:[270f,0f]}
# 加入旁觀
# text_display: spec_title spec_instruct
# interaction: spec_interact
summon minecraft:text_display ~ ~ ~ {Tags:["settings","spec_title"],text:'{"text":"加入旁觀","color": "#c6c6c6"}',Rotation:[270f,0f]}
summon minecraft:interaction ~ ~ ~ {Tags:["settings","spec_interact"],Rotation:[270f,0f]}