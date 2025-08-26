function duel:infinity/add
execute as @e[tag=attack] run function duel:infinity/minus
tellraw @s ["",{text:">> ",color:gold},{text:"你在"},{text:"無限狀態",color:gold},{text:"被"},{selector: "@n[tag = attack]"}, {text:"攻擊，對方"},{text:"損失1000分",color:gold}]
playsound entity.guardian.hurt ambient @s