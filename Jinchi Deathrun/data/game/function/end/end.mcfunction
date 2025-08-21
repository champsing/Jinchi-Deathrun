# 結束遊戲：勝方確定才執行

# 先上無敵防止進一步變更分數
tag @n[tag = red_base] add invulnerable
tag @n[tag = blue_base] add invulnerable
effect give @a weakness infinite 150 true
effect give @a resistance infinite 150 true
scoreboard players set 勝負已分 gamecore 1
schedule clear game:time
schedule clear stamina:regain
schedule clear items:treasure/generate_treasure

execute as @a at @n[type = marker, tag = lobby] run spawnpoint @s ~ ~ ~

scoreboard players display numberformat 剩餘時間 gameinfo fixed {text: "遊戲結束", color: "#43d245", bold: true}
bossbar set countdown name [{text: "遊戲結束", color: "#43d245", bold: true}]

execute as @a[team = !spec] run scoreboard players operation @s top_duel = @s total_duel
execute as @a[team = !spec] run scoreboard players operation @s top_score = @s score
execute as @a[team = !spec] run scoreboard players operation @s top_success = @s total_success
execute as @a[team = !spec] run scoreboard players operation @s top_kill = @s total_kill
execute as @a[team = !spec] run scoreboard players operation @s top_invalid = @s total_invalid
execute as @a[team = !spec] run scoreboard players operation @s top_item = @s total_item

scoreboard players operation 個人最高分 top_score > @a[team = !spec] score
scoreboard players operation 對戰最高分 top_duel > @a[team = !spec] total_duel
scoreboard players operation 攻陣最高分 top_success > @a[team = !spec] total_success
scoreboard players operation 陣殺最高分 top_kill > @a[team = !spec] total_kill
scoreboard players operation 無效最高分 top_invalid > @a[team = !spec] total_invalid
scoreboard players operation 道具最高分 top_item > @a[team = !spec] total_item

scoreboard players operation @a[team = !spec] top_score -= 個人最高分 top_score
scoreboard players operation @a[team = !spec] top_duel -= 對戰最高分 top_duel
scoreboard players operation @a[team = !spec] top_success -= 攻陣最高分 top_success
scoreboard players operation @a[team = !spec] top_kill -= 陣殺最高分 top_kill
scoreboard players operation @a[team = !spec] top_invalid -= 無效最高分 top_invalid
scoreboard players operation @a[team = !spec] top_item -= 道具最高分 top_item

# -----------------------------------------
# 紅隊分數: 紅隊分數 gameinfo
# 藍隊分數: 藍隊分數 gameinfo
# -----------------------------------------
# 對戰好手: @a[scores = {top_duel = 0}]  (@a[scores = {top_duel = 0}] total_duel)
# 大富豪家: @a[scores = {top_scores = 0}]  (@a[scores = {top_scores = 0}] score)
# 攻陣好手: @a[scores = {top_success = 0}] (@a[scores = {top_success = 0}] total_success)
# 陣殺MVP: @a[scores = {top_kill = 0}]  (@a[scores = {top_kill = 0}] total_kill)
# 無效魔人: @a[scores = {top_invalid = 0}]  (@a[scores = {top_invalid = 0}] total_invalid)
# 道具技師: @a[scores = {top_item = 0}]  (@a[scores = {top_item = 0}] total_item)
# -----------------------------------------

tellraw @a ["",{text:"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",color:gold}]
tellraw @a ["",{text:"-----------------------------------------\n",bold:true,color:gold}]
tellraw @a [{text:"紅隊分數: ",color:red},{score:{name:"紅隊分數",objective:"gameinfo"},color:red},{text:"\n藍隊分數: ",color:"blue"},{score:{name:"藍隊分數",objective:"gameinfo"},color:"blue"}]
tellraw @a [{text:"-----------------------------------------\n",bold:true,color:gold}]

tellraw @a [{text:"大富豪家: ",color:aqua,hover_event:{action:"show_text", value:"個人分數最高的玩家。"}},{selector:"@a[scores = {top_score = 0}]"},{text:" (",color:aqua},{score:{name:"@a[scores = {top_score = 0}]",objective:score},color:aqua},{text:")",color:aqua}]

tellraw @a [{text:"對戰好手: ",color:light_purple,hover_event:{action:"show_text", value:"對戰次數最多的玩家。"}},{selector:"@a[scores = {top_duel = 0}]"},{text:" (",color:aqua},{score:{name:"@p[scores = {top_duel = 0}]",objective:"total_duel"},color:aqua},{text:")",color:aqua}]

tellraw @a [{text:"攻陣天才: ",color:green,hover_event:{action:"show_text", value:"成功攻陣次數最多的玩家。"}},{selector:"@a[scores = {top_success = 0}]"},{text:" (",color:aqua},{score:{name:"@a[scores = {top_success = 0}]",objective:"total_success"},color:aqua},{text:")",color:aqua}]

tellraw @a [{text:"陣殺MVP: ",color:red,hover_event:{action:"show_text", value:"陣殺玩家人數最多的玩家。"}},{selector:"@a[scores = {top_kill = 0}]"},{text:" (",color:aqua},{score:{name:"@a[scores = {top_kill = 0}]",objective:"total_kill"},color:aqua},{text:")",color:aqua}]

tellraw @a [{text:"無效魔人: ",color:gray,hover_event:{action:"show_text", value:"進入無效狀態次數最多的玩家。"}},{selector:"@a[scores = {top_invalid = 0}]"},{text:" (",color:aqua},{score:{name:"@a[scores = {top_invalid = 0}]",objective:"total_invalid"},color:aqua},{text:")",color:aqua}]

tellraw @a [{text:"道具技師: ",color:yellow,hover_event:{action:"show_text", value:"使用道具次數最多（不計加分道具）的玩家。"}},{selector:"@a[scores = {top_item = 0}]"},{text:" (",color:aqua},{score:{name:"@a[scores = {top_item = 0}]",objective:"total_item"},color:aqua},{text:")",color:aqua}]

tellraw @a [{text:"-----------------------------------------",bold:true,color:gold}]
tellraw @a {text:"[切換排行榜顯示]\n",color:gold, bold: true,click_event: {action: "run_command",command: "/function game:end/leaderboard"}}
tellraw @a {text:"[點擊返回大廳並重置遊戲]",color:aqua, bold: true,click_event: {action: "run_command",command: "/function game:initialize"}}