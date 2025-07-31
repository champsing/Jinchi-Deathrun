# 按下 tellraw [此處] 後發生的事

forceload add ~ ~
setworldspawn ~ ~ ~
spawnpoint @a ~ ~ ~
execute align xyz run summon marker ~0.5 ~1 ~0.5 {Tags:["lobby"], UUID:[I; 590352237, 0, 0, 0]}
function start:lobby
function start:install

scoreboard players set 操作模式 system 1
time set day
clear @a
tellraw @a ["",{text:"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n>> 大廳",color:gold},{text:"已生成完畢"}]
function start:intro