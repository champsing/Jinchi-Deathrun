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