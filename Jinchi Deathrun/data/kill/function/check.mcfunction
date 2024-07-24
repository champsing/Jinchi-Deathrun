#---偵測殺人---
execute if entity @e[type=marker,tag=start] run function kill:success
advancement revoke @s only kill:check