tag @s add invalid
execute if entity @s[team = red] run scoreboard players add 紅隊陣地 score 1000
execute if entity @s[team = blue] run scoreboard players add 藍隊陣地 score 1000
scoreboard players add @s total_contribution 1000
scoreboard players add @s total_success 1
scoreboard players add @s total_invalid 1

execute if entity @s[team = red] at @e[tag = blue_base, type = interaction] run summon lightning_bolt ~ ~10 ~
execute if entity @s[team = blue] at @e[tag = red_base, type = interaction] run summon lightning_bolt ~ ~10 ~

execute if entity @s[team = red] run title @a[team = red] subtitle {translate:jd.base.function.success.11_1, bold: true, color: red}
execute if entity @s[team = red] run title @a[team = blue] subtitle {translate:jd.base.function.success.12_1, bold: true, color: blue}
execute if entity @s[team = blue] run title @a[team = blue] subtitle {translate:jd.base.function.success.11_1, bold: true, color: blue}
execute if entity @s[team = blue] run title @a[team = red] subtitle {translate:jd.base.function.success.12_1, bold: true, color: red}
execute if entity @s[team = red] run title @a title {translate:jd.base.function.success.15_1, color: red, bold: true}
execute if entity @s[team = blue] run title @a title {translate:jd.base.function.success.16_1, color: blue, bold: true}
tellraw @a [{translate: jd.empty},{translate:"jd.console",color:gold},{selector:"@s"},{translate:jd.base.function.success.17_1},{translate:jd.base.function.success.17_2,color:gold},{translate:jd.base.function.success.17_3},{translate:jd.base.function.success.17_4,color:gold}]