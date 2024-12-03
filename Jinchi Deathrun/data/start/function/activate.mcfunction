# 按下 tellraw [此處] 後發生的事

forceload add ~ ~
setworldspawn ~ ~ ~
spawnpoint @a ~ ~ ~
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["lobby"]}
function start:lobby
function start:check_updates
function start:install

time set day
clear @a
tellraw @a ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n>> ","color":"gold"},{"text":"大廳","color":"gold"},{"text":"已生成完畢"}]
function start:intro
tellraw @a ["",{"text":">> ","color":"gold"},{"text":"若您擁有權限，您可以點擊"},{"text":"","color":"gold"},{"text":" "},{"text":"此處","underlined": true,"bold": true, "color": "aqua","clickEvent": {"action": "run_command","value": "/function edit:give"}},{"text":" "},{"text":"來取得編輯場地的道具"}]