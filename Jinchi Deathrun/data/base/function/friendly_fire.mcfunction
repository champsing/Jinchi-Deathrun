execute if entity @s[team = red] run data remove entity @n[tag = red_base] attack
execute if entity @s[team = blue] run data remove entity @n[tag = blue_base] attack
title @s title {text: "誤擊己方陣地", bold: true, color: gray}
title @s subtitle {text: "請勿攻擊己方陣地！", bold: true}
function duel:shock/effect
tellraw @s [{translate: jd.empty},{translate:"jd.console",color:gold},{text:"你因"},{text:"誤擊己方陣地",color:red},{text:"而遭受"},{text:"電擊",color:gold},{text:"，無法移動、跳躍、攻擊"},{text:" 5 秒",color:gold}]

playsound entity.elder_guardian.curse ambient @s