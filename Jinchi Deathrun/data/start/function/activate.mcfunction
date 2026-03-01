# 按下 tellraw [此處] 後發生的事

forceload add ~ ~
setworldspawn ~ ~ ~
spawnpoint @a ~ ~ ~
execute align xyz run summon marker ~0.5 ~1 ~0.5 {Tags:["jd.lobby"], UUID:[I; 590352237, 0, 0, 0]}
# 清除亡國2和監控2的餘孽
function start:uninstall/other_maps
function start:lobby
function start:install
function edit:actionbar
tellraw @a ["",{translate:jd.clear_chat,color:gold},{translate:jd.start.function.activate.12_2}]
function start:intro
