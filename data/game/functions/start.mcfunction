#---效果---
clear @a 
effect clear @a
effect give @a hunger 3 255 true
effect give @a resistance 3 200 true
effect give @a regeneration 15 100 true
effect give @a night_vision infinite 0 true

#---通知---
title @a title {"text":"START","bold":true,"color":"gold"}

schedule function game:time 1s
schedule function stamina:regain 10s
schedule function event:start 600s