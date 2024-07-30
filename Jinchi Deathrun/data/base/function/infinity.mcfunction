execute at @s[team = red] run particle dust{color:[0.89,0.09,0.09],scale:0.4} ~ ~1 ~ 0.6 0.6 0.6 2 20 normal
execute at @s[team = blue] run particle dust{color:[0.04,0.07,1.0],scale:0.4} ~ ~1 ~ 0.6 0.6 0.6 2 20 normal
tag @s[tag=!infinity] add infinity
tag @s[tag=invalid] remove invalid