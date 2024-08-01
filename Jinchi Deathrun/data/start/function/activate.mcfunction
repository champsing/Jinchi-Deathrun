# 按下 tellraw [此處] 後發生的事

forceload add ~ ~
setworldspawn ~ ~ ~
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["lobby"]}
scoreboard players set @e[tag = lobby] mode 2
function start:lobby
function start:install

time set day
clear @a
tellraw @a ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n>> ","bold":true,"color":"gold"},{"text":"大廳","color":"gold"},{"text":"已生成完畢"}]