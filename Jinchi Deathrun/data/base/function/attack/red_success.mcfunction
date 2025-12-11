#---無效狀態攻陣---
execute on attacker if entity @s[tag = invalid] run return run function duel:shock/success

#---攻擊自己陣地---
execute on attacker if entity @s[team = red] run return run function base:friendly_fire

#---如果陣地無敵直接return---
execute if entity @s[tag = invulnerable] on attacker run return run function base:invulnerable

#---成功---
execute on attacker if entity @s[team = blue] run function base:success