scoreboard players add @s score 1000
function game:refresh_scbd
tag @s add invalid
scoreboard players add @s total_success 1
scoreboard players add @s total_invalid 1
execute if entity @s[team = red] at @e[tag = blue_base] run summon lightning_bolt ~ ~10 ~
execute if entity @s[team = blue] at @e[tag = red_base] run summon lightning_bolt ~ ~10 ~

playsound block.anvil.place ambient @a
execute if entity @s[team = red] run title @a[team = red] subtitle {text: "我方成功攻陣", bold: true, color: red}
execute if entity @s[team = red] run title @a[team = blue] subtitle {text: "我方陣地遭攻陣", bold: true, color: blue}
execute if entity @s[team = blue] run title @a[team = blue] subtitle {text: "我方成功攻陣", bold: true, color: blue}
execute if entity @s[team = blue] run title @a[team = red] subtitle {text: "我方陣地遭攻陣", bold: true, color: red}
execute if entity @s[team = red] run title @a title {text: "紅隊攻陣", color: red, bold: true}
execute if entity @s[team = blue] run title @a title {text: "籃隊攻陣", color: blue, bold: true}
tellraw @a ["",{text:">> ",color:gold},{selector:"@s"},{text:"成功碰觸敵方"},{text:"陣地",color:gold},{text:" 獲得了"},{text:"1000分",color:gold}]
