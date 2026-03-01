# 電擊
# @s: 1. target 2. attacker
# at: Server
playsound entity.zombie_villager.converted ambient @s
function duel:shock/effect
tellraw @s [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.duel.function.shock.success.6_1},{translate:jd.duel.function.shock.success.6_4,color:gold},{translate:jd.duel.function.shock.success.6_3},{translate:jd.duel.function.shock.success.6_4,color:gold},{translate:jd.duel.function.shock.success.6_5},{translate:jd.base.function.friendly_fire.6_4,color:gold},{translate:jd.base.function.friendly_fire.6_5},{translate:jd.duel.function.shock.success.6_8,color:gold}]