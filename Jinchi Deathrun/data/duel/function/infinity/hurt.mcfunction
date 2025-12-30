tellraw @a[tag = attack] [{translate: jd.empty},{translate:"jd.console",color:gold},{text:"你在"},{text:"無限狀態",color:gold},{text:"和"},{selector: "@s"}, {text:"決鬥，"},{selector: "@s"},{text:"損失1000分",color:gold}]
tellraw @s [{translate: jd.empty},{translate:"jd.console",color:gold},{text:"你在"},{text:"無限狀態",color:gold},{text:"和"},{selector: "@a[tag = attack]"}, {text:"決鬥，"},{text:"損失了1000分",color:gold}]

execute as @a[tag = attack] run function duel:infinity/add
function duel:infinity/minus