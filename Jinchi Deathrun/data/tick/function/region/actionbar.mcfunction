#---REGION：actionbar刷新---
#---正常情況---
execute as @a[team = !spec,tag = !infinity] run title @s actionbar [{translate:jd.tick.function.region.actionbar.3_1,bold:true,color:aqua},{score:{name:"@s",objective:score}},{translate:jd.tick.function.region.actionbar.3_2,bold:true,color:aqua},{score:{name:"@s",objective:"stamina"},color:"#a0cc1d"}]

#---組隊時---
execute as @a[team = !spec,tag = !infinity] if score @s grouped matches 2.. run title @s actionbar [{translate:jd.tick.function.region.actionbar.6_1,bold:true,color:aqua},{score:{name:"@s",objective:team_score}},{translate:jd.tick.function.region.actionbar.6_2,bold:true,color:aqua},{score:{name:"@s",objective:score}},{translate:jd.tick.function.region.actionbar.6_3,bold:true,color:aqua},{score:{name:"@s",objective:"stamina"},color:"#a0cc1d"}]

#---無敵時---
execute as @a[team = !spec,tag = infinity] run title @s[team = red] actionbar [{translate:jd.tick.function.region.actionbar.3_1,bold:true,color:aqua},{translate:jd.tick.function.region.actionbar.9_2,bold:true,color:"#871ea7"},{score:{name:"@s",objective:score},color:gray, bold: false, strikethrough: true},{translate:jd.tick.function.region.actionbar.9_3,bold:true,color:aqua},{score:{name:"紅隊陣地",objective:"score"},color:"#2f00ff"},{translate:jd.tick.function.region.actionbar.3_2,bold:true,color:aqua},{score:{name:"@s",objective:"stamina"},color:"#a0cc1d"}]
execute as @a[team = !spec,tag = infinity] run title @s[team = blue] actionbar [{translate:jd.tick.function.region.actionbar.3_1,bold:true,color:aqua},{translate:jd.tick.function.region.actionbar.9_2,bold:true,color:"#871ea7"},{score:{name:"@s",objective:score},color:gray, bold: false, strikethrough: true},{translate:jd.tick.function.region.actionbar.9_3,bold:true,color:aqua},{score:{name:"藍隊陣地",objective:"score"},color:"#2f00ff"},{translate:jd.tick.function.region.actionbar.3_2,bold:true,color:aqua},{score:{name:"@s",objective:"stamina"},color:"#a0cc1d"}]

#---無效時---
execute as @a[team = !spec,tag = invalid] run title @s actionbar [{translate:jd.tick.function.region.actionbar.3_1,bold:true,color:aqua},{translate:jd.tick.function.region.actionbar.13_2,bold:true,color:"#d1cad1"},{score:{name:"@s",objective:score},color:gray, bold: false, strikethrough: true},{translate:jd.tick.function.region.actionbar.3_2,bold:true,color:aqua},{score:{name:"@s",objective:"stamina"},color:"#a0cc1d"}]

#---護盾時---
execute as @a[team = !spec, predicate=items:has_shield] run title @s actionbar [{translate:jd.tick.function.region.actionbar.3_1,bold:true,color:aqua},{translate:jd.tick.function.region.actionbar.16_2,bold:true,color:"#109e76"},{score:{name:"@s",objective:score},color:aqua, bold: false},{translate:jd.tick.function.region.actionbar.3_2,bold:true,color:aqua},{score:{name:"@s",objective:"stamina"},color:"#a0cc1d"}]

#---無效又護盾時---
execute as @a[team = !spec,tag = invalid, predicate=items:has_shield] run title @s actionbar [{translate:jd.tick.function.region.actionbar.3_1,bold:true,color:aqua},{translate:jd.tick.function.region.actionbar.16_2,bold:true,color:"#109e76"},{translate:jd.tick.function.region.actionbar.13_2,bold:true,color:"#d1cad1"},{score:{name:"@s",objective:score},color:gray, bold: false, strikethrough: true},{translate:jd.tick.function.region.actionbar.3_2,bold:true,color:aqua},{score:{name:"@s",objective:"stamina"},color:"#a0cc1d"}]
