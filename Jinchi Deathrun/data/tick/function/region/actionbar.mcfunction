#---REGION：actionbar刷新---
#---正常情況---
execute as @a[team = !spec,tag = !infinity] run title @s actionbar [{text:"分數: ",bold:true,color:aqua},{score:{name:"@s",objective:score}},{text:" ． 體力: ",bold:true,color:aqua},{score:{name:"@s",objective:"stamina"},color:"#a0cc1d"}]

#---組隊時---
execute as @a[team = !spec,tag = !infinity] if score @s grouped matches 2.. run title @s actionbar [{text:"組隊分數: ",bold:true,color:aqua},{score:{name:"@s",objective:team_score}},{text:"(個人: ",bold:true,color:aqua},{score:{name:"@s",objective:score}},{text:") ． 體力: ",bold:true,color:aqua},{score:{name:"@s",objective:"stamina"},color:"#a0cc1d"}]

#---無敵時---
execute as @a[team = !spec,tag = infinity] run title @s[team = red] actionbar [{text:"分數: ",bold:true,color:aqua},{text:"無限 ",bold:true,color:"#871ea7"},{score:{name:"@s",objective:score},color:gray, bold: false, strikethrough: true},{text:" ． 陣地分數: ",bold:true,color:aqua},{score:{name:"紅隊陣地",objective:"score"},color:"#2f00ff"},{text:" ． 體力: ",bold:true,color:aqua},{score:{name:"@s",objective:"stamina"},color:"#a0cc1d"}]
execute as @a[team = !spec,tag = infinity] run title @s[team = blue] actionbar [{text:"分數: ",bold:true,color:aqua},{text:"無限 ",bold:true,color:"#871ea7"},{score:{name:"@s",objective:score},color:gray, bold: false, strikethrough: true},{text:" ． 陣地分數: ",bold:true,color:aqua},{score:{name:"藍隊陣地",objective:"score"},color:"#2f00ff"},{text:" ． 體力: ",bold:true,color:aqua},{score:{name:"@s",objective:"stamina"},color:"#a0cc1d"}]

#---無效時---
execute as @a[team = !spec,tag = invalid] run title @s actionbar [{text:"分數: ",bold:true,color:aqua},{text:"無效 ",bold:true,color:"#d1cad1"},{score:{name:"@s",objective:score},color:gray, bold: false, strikethrough: true},{text:" ． 體力: ",bold:true,color:aqua},{score:{name:"@s",objective:"stamina"},color:"#a0cc1d"}]

#---護盾時---
execute as @a[team = !spec, predicate=items:has_shield] run title @s actionbar [{text:"分數: ",bold:true,color:aqua},{text:"護盾 ",bold:true,color:"#109e76"},{score:{name:"@s",objective:score},color:aqua, bold: false},{text:" ． 體力: ",bold:true,color:aqua},{score:{name:"@s",objective:"stamina"},color:"#a0cc1d"}]

#---無效又護盾時---
execute as @a[team = !spec,tag = invalid, predicate=items:has_shield] run title @s actionbar [{text:"分數: ",bold:true,color:aqua},{text:"護盾 ",bold:true,color:"#109e76"},{text:"無效 ",bold:true,color:"#d1cad1"},{score:{name:"@s",objective:score},color:gray, bold: false, strikethrough: true},{text:" ． 體力: ",bold:true,color:aqua},{score:{name:"@s",objective:"stamina"},color:"#a0cc1d"}]
