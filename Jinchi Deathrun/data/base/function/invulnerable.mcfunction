title @s title {translate:jd.base.function.invulnerable.1_1, bold: true, color: gray}
title @s subtitle {translate:jd.base.function.invulnerable.2_1, bold: true}
function duel:shock/effect
tellraw @s [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.base.function.friendly_fire.6_1},{translate:jd.base.function.invulnerable.4_2,color:red},{translate:jd.base.function.friendly_fire.6_3},{translate:jd.base.function.friendly_fire.6_4,color:gold},{translate:jd.base.function.friendly_fire.6_5},{translate:jd.base.function.friendly_fire.6_6,color:gold}]

playsound entity.elder_guardian.curse ambient @s