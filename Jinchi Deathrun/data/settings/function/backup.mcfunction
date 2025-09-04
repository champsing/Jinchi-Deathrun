# 所有人都有settings
 
# 初始分數
# initial_title "514d4e21-daa1-46d8-805c-12c126f7448b" https://www.soltoder.com/mc-uuid-converter/#1364020769,-626964776,-2141449535,653739147
# initial_value "4f736577-42ef-4560-83a6-7c47e19c9f38" https://www.soltoder.com/mc-uuid-converter/#1332962679,1122977120,-2086241209,-509829320
# initial_interaction "97df8bd4-a517-424b-86fd-0d47702fc6e8" https://www.soltoder.com/mc-uuid-converter/#-1746957356,-1525202357,-2030236345,1882179304
summon text_display ~ ~ ~ {alignment: "center", UUID:[I;1364020769,-626964776,-2141449535,653739147],Tags:["initial_title", "settings"],text:[{text:"初始分數",color: "green"}],Rotation:[270f,0f]}
summon text_display ~ ~ ~ {alignment: "center", UUID:[I;1332962679,1122977120,-2086241209,-509829320],Tags:["initial_value","settings"],text:[{score:{name:"初始分數",objective:"menu"}}],Rotation:[270f,0f]}
summon interaction ~ ~ ~ {UUID:[I;-1746957356,-1525202357,-2030236345,1882179304],Tags:["initial_interactionion", "settings"],Rotation:[270f,0f]}

# 目標分數
# target_title "2e623e78-7b83-4efc-8d5f-7dc9bb6882f4" https://www.soltoder.com/mc-uuid-converter/#778190456,2072203004,-1923121719,-1150778636
# target_value "4cb5ef9d-2ed8-4dde-82c4-970024aadc8b" https://www.soltoder.com/mc-uuid-converter/#1286991773,785927646,-2101045504,615177355
# target_interaction "1959fe6d-cc65-4a81-84ed-7f0ad54a4e9b" https://www.soltoder.com/mc-uuid-converter/#425328237,-865777023,-2064810230,-716550501
summon text_display ~ ~ ~ {alignment: "center", UUID:[I;778190456,2072203004,-1923121719,-1150778636],Tags:["target_title", "settings"],text:[{text:"目標分數",color: "green"}],Rotation:[270f,0f]}
summon text_display ~ ~ ~ {alignment: "center", UUID:[I;1286991773,785927646,-2101045504,615177355],Tags:["target_value", "settings"],text:[{score:{name:"目標分數",objective:"menu"}}],Rotation:[270f,0f]}
summon interaction ~ ~ ~ {UUID:[I;425328237,-865777023,-2064810230,-716550501],Tags:["target_interaction", "settings"],Rotation:[270f,0f]}

# 時間限制
# time_title "b716f343-abcd-4c43-8fc5-b17805863015" https://www.soltoder.com/mc-uuid-converter/#-1223232701,-1412608957,-1882869384,92680213
# time_value "53099724-2dd2-420b-aa3c-ec979d866df9" https://www.soltoder.com/mc-uuid-converter/#1393137444,768754187,-1438847849,-1652134407
# time_interaction "de2e4a39-a2a3-4ce8-9b73-900859a00d42" https://www.soltoder.com/mc-uuid-converter/#-567391687,-1566356248,-1686925304,1503661378
summon text_display ~ ~ ~ {alignment: "center", UUID:[I;-1223232701,-1412608957,-1882869384,92680213],Tags:["time_title","settings"],text:[{text:"時間限制",color: "green"}],Rotation:[270f,0f]}
summon text_display ~ ~ ~ {alignment: "center", UUID:[I;1393137444,768754187,-1438847849,-1652134407],Tags:["time_value","settings"],text:[[{score:{name:"遊戲時間分鐘",objective:"system"}},{text:" 分鐘"}]],Rotation:[270f,0f]}
summon interaction ~ ~ ~ {UUID:[I;-567391687,-1566356248,-1686925304,1503661378],Tags:["time_interaction","settings"],Rotation:[270f,0f]}

# 隨機分隊 
# team_title "20029a29-015c-4119-88a7-8cdb5784d99a" https://www.soltoder.com/mc-uuid-converter/#537041449,22823193,-2002285349,1468324250
# team_instruct "5b6c9e02-4e4b-44bc-b240-fd419e21d0df" https://www.soltoder.com/mc-uuid-converter/#1533844994,1313555644,-1304363711,-1641951009
# team_interaction "cac7bae0-cc58-414b-a07c-156a894b27f6" https://www.soltoder.com/mc-uuid-converter/#-892880160,-866631349,-1602480790,-1991563274
summon text_display ~ ~ ~ {alignment: "center", UUID:[I;537041449,22823193,-2002285349,1468324250],Tags:["team_title","settings"],text:[[{text:"隨機分隊",bold:true,color: aqua}]],Rotation:[270f,0f]}
summon text_display ~ ~ ~ {alignment: "center", UUID:[I;1533844994,1313555644,-1304363711,-1641951009],Tags:["team_instruct","settings"],text:[{text:"左鍵分隊"}],Rotation:[270f,0f]}
summon interaction ~ ~ ~ {UUID:[I;-892880160,-866631349,-1602480790,-1991563274],Tags:["team_interaction","settings"],Rotation:[270f,0f]}

# 加入隊伍
# join_title "4fdbb999-4489-498f-bfcc-5aa3bc3f0e7d" https://www.soltoder.com/mc-uuid-converter/#1339799961,1149847951,-1077126493,-1136718211
# join_instruct "7e7b61a7-1280-43d0-af18-9a26ac0cc812" https://www.soltoder.com/mc-uuid-converter/#2122015143,310395856,-1357342170,-1408448494
# join_interaction "5b2f0f51-dc07-4e13-aec3-92a526e82f58" https://www.soltoder.com/mc-uuid-converter/#1529810769,-603501037,-1362914651,652750680
summon text_display ~ ~ ~ {alignment: "center",UUID:[I;1339799961,1149847951,-1077126493,-1136718211],Tags:["join_title","settings"],text:[[{text:"加入隊伍",color:gold, bold:true}]],Rotation:[270f,0f],background: -2147483647}
summon text_display ~ ~ ~ {alignment: "center", UUID:[I;2122015143,310395856,-1357342170,-1408448494],Tags:["join_instruct","settings"],text:[{text:"左鍵加入"},{text:"紅隊", color: red, bold: true},{text:"，右鍵加入"},{text:"藍隊", color: blue, bold: true}],Rotation:[270f,0f]}
summon interaction ~ ~ ~ {UUID:[I;1529810769,-603501037,-1362914651,652750680],Tags:["join_interaction","settings"],Rotation:[270f,0f]}

# 加入旁觀
# spec_title "53ee349f-11ee-4c32-a7fc-a6aacd558b8e" https://www.soltoder.com/mc-uuid-converter/#1408119967,300829746,-1476614486,-850031730
# spec_instruct "80ef652a-0cec-42fa-8b62-dfef28bb5702" https://www.soltoder.com/mc-uuid-converter/#-2131794646,216810234,-1956454417,683366146
# spec_interaction "0ad7e3cf-eb6f-4c8b-b044-dde49d24d5cf" https://www.soltoder.com/mc-uuid-converter/#181920719,-345027445,-1337664028,-1658530353
summon text_display ~ ~ ~ {alignment: "center", UUID:[I;1408119967,300829746,-1476614486,-850031730],Tags:["spec_title","settings"],text:[{text:"加入旁觀",bold:true,color: "#c6c6c6"}],Rotation:[270f,0f]}
summon text_display ~ ~ ~ {billboard: "center", alignment: "center", UUID:[I;-2131794646,216810234,-1956454417,683366146],Tags:["spec_instruct","settings"],text:[{text:"左鍵旁觀，右鍵離開"}],Rotation:[270f,0f]}
summon interaction ~ ~ ~ {UUID:[I;181920719,-345027445,-1337664028,-1658530353],Tags:["spec_interaction","settings"],Rotation:[270f,0f]}

# 陣地發光
# red_base_glowing "37bc80d5-09af-420f-a95a-7bc162ca2216" https://www.soltoder.com/mc-uuid-converter/#935100629,162480655,-1453687871,1657414166
# blue_base_glowing "f340c881-7ebd-4c46-8ca7-2aa7a5301005" https://www.soltoder.com/mc-uuid-converter/#-213858175,2126335046,-1935201625,-1523576827
execute at @e[tag = red_base] run summon block_display ~ ~2 ~ {block_state:{Name:"smooth_quartz"}, UUID:[I;935100629,162480655,-1453687871,1657414166],Glowing:1b}
execute at @e[tag = blue_base] run summon block_display ~ ~2 ~ {block_state:{Name:"smooth_quartz"}, UUID:[I;-213858175,2126335046,-1935201625,-1523576827],Glowing:1b}

summon text_display ~ ~ ~ {billboard: "center", Invulnerable: 0b,text: [{text:"退出編輯模式",color:"#61ff9b",bold:true}], UUID: [I; 205417058, 1884112378, -1279432616, -881205101], Tags: ["edit_title"], Rotation:[0f,0f]}

summon minecraft:interaction ~ ~ ~ {Invulnerable: 0b, Rotation: [0.0f, 0.0f], Tags: ["edit"]}

summon text_display ~ ~ ~ {billboard: "center", Invulnerable: 0b,text: [{text:"開始遊戲",color:"#0fc421",bold:true}], UUID: [I; 2054170057, 1884112378, -1279432616, -881205101], Tags: ["start_title"], Rotation:[180f,0f]}

summon text_display ~ ~ ~ {billboard: "center", Invulnerable: 0b, text: [{text:"模式："},{text:"對戰",color:"#C24CDC",bold:true}], UUID: [I; -925065706, -1941419362, -1503060242, -838133364], Tags: ["mode_title"], Rotation:[180f,0f]}
summon minecraft:interaction ~ ~ ~ {Invulnerable: 0b, Rotation: [180.0f, 0.0f], Tags: ["start"]}

# 香榭 Champsing
summon minecraft:armor_stand ~ ~-0.5 ~ {Invulnerable:true,NoBasePlate:true,NoGravity:true,ShowArms:true,CustomNameVisible:true,equipment: {head: {id: "player_head", components:{profile:{name:"champs1"}}, count: 1}, chest: {id: "golden_chestplate", components: { enchantment_glint_override: true}, count: 1}, legs:{id: "golden_leggings", components: { enchantment_glint_override: true}, count: 1}, feet:{id: "golden_boots", components: { enchantment_glint_override: true}, count: 1},mainhand: {id: "minecraft:command_block", components: {enchantment_glint_override: true}, count: 1}, offhand: {id: "minecraft:breeze_rod", components: {enchantment_glint_override: true}, count: 1}},CustomName:[{text:"香榭 Champsing",color: "#adff09", bold: true}],DisabledSlots:4144959,Pose:{LeftLeg:[332f,344f,0f],RightLeg:[0f,0f,10f],LeftArm:[289f,0f,0f],RightArm:[0f,0f,8f]},Rotation:[180f,0f],Tags:["champsing"]}

# 協力者們
# oreki
summon minecraft:armor_stand ~ ~-0.5 ~ {Invulnerable:true,NoBasePlate:true,NoGravity:true,ShowArms:true,CustomNameVisible:true,CustomName:{text:"惡靈 oreki20",color:dark_gray,bold:true},DisabledSlots:4144959,Pose:{LeftLeg:[20f,0f,3f],LeftArm:[341f,276f,0f],RightArm:[85f,115f,111f]},equipment: {head: {id: "player_head", components:{profile:{name:"oreki20"}}, count: 1}, chest: {id: "netherite_chestplate", components: { enchantment_glint_override: true}, count: 1}, legs:{id: "netherite_leggings", components: { enchantment_glint_override: true}, count: 1}, feet:{id: "netherite_boots", components: { enchantment_glint_override: true}, count: 1},mainhand: {id: "minecraft:blaze_rod", components: {enchantment_glint_override: true}, count: 1}, offhand: {id: "minecraft:command_block", components: {enchantment_glint_override: true}, count: 1}}, Rotation: [180f,0f], Tags: ["oreki", "collaborators"]}

# Wubai
summon minecraft:armor_stand ~ ~-0.5 ~ {Invulnerable:true,NoBasePlate:true,NoGravity:true,ShowArms:true,CustomNameVisible:true,CustomName:{text:"五百 whostealmy500",color: green,bold:true},DisabledSlots:4144959,Pose:{LeftLeg:[20f,0f,3f],LeftArm:[341f,276f,0f],RightArm:[85f,115f,111f]},equipment: {head: {id: "player_head", components:{profile:{name:"Elijah_Hsieh"}}, count: 1}, chest: {id: "netherite_chestplate", components: { enchantment_glint_override: true}, count: 1}, legs:{id: "netherite_leggings", components: { enchantment_glint_override: true}, count: 1}, feet:{id: "netherite_boots", components: { enchantment_glint_override: true}, count: 1}, offhand: {id: "minecraft:dark_prismarine", components: {enchantment_glint_override: true}, count: 1}}, Rotation: [270f,0f], Tags: ["Wubai", "collaborators"]}

# Anna
summon minecraft:armor_stand ~ ~-0.5 ~ {Invulnerable:true,NoBasePlate:true,NoGravity:true,ShowArms:true,CustomNameVisible:true,CustomName:{text:"杏奈 Anna",color: "#de0bc9",bold:true},DisabledSlots:4144959,Pose:{LeftLeg:[20f,0f,3f],LeftArm:[341f,276f,0f],RightArm:[85f,115f,111f]},equipment: {head: {id: "player_head", components:{profile:{name:"Anna0327"}}, count: 1}, chest: {id: "netherite_chestplate", components: { enchantment_glint_override: true}, count: 1}, legs:{id: "netherite_leggings", components: { enchantment_glint_override: true}, count: 1}, feet:{id: "netherite_boots", components: { enchantment_glint_override: true}, count: 1}, offhand: {id: "minecraft:polished_tuff", components: {enchantment_glint_override: true}, count: 1}}, Rotation: [270f,0f], Tags: ["Anna", "collaborators"]}

# Teng
summon minecraft:armor_stand ~ ~-0.5 ~ {Invulnerable:true,NoBasePlate:true,NoGravity:true,ShowArms:true,CustomNameVisible:true,CustomName:{text:"騰 DawnKeeperCal",color: "#ecec17",bold:true},DisabledSlots:4144959,Pose:{LeftLeg:[20f,0f,3f],LeftArm:[341f,276f,0f],RightArm:[85f,115f,111f]},equipment: {head: {id: "player_head", components:{profile:{name:"DawnKeeperCal"}}, count: 1}, chest: {id: "netherite_chestplate", components: { enchantment_glint_override: true}, count: 1}, legs:{id: "netherite_leggings", components: { enchantment_glint_override: true}, count: 1}, feet:{id: "netherite_boots", components: { enchantment_glint_override: true}, count: 1}, offhand: {id: "minecraft:polished_basalt", components: {enchantment_glint_override: true}, count: 1}, mainhand: {id: "minecraft:diamond", components: {enchantment_glint_override: true}, count: 1}}, Rotation: [0f,0f], Tags: ["Teng", "collaborators"]}

# Lemon
summon minecraft:armor_stand ~ ~-0.5 ~ {Invulnerable:true,NoBasePlate:true,NoGravity:true,ShowArms:true,CustomNameVisible:true,CustomName:{text:"酸檸檬星 sourlemonstar",color: "#ecec17",bold:true},DisabledSlots:4144959,Pose:{LeftLeg:[20f,0f,3f],LeftArm:[341f,276f,0f],RightArm:[85f,115f,111f]},equipment: {head: {id: "player_head", components:{profile:{name:"DayNightTNT0w0"}}, count: 1}, chest: {id: "netherite_chestplate", components: { enchantment_glint_override: true}, count: 1}, legs:{id: "netherite_leggings", components: { enchantment_glint_override: true}, count: 1}, feet:{id: "netherite_boots", components: { enchantment_glint_override: true}, count: 1}, offhand: {id: "minecraft:stripped_pale_oak_wood", components: {enchantment_glint_override: true}, count: 1}, mainhand: {id: "minecraft:diamond", components: {enchantment_glint_override: true}, count: 1}}, Rotation: [0f,0f], Tags: ["Lemon", "collaborators"]}

# Mumi
summon minecraft:armor_stand ~ ~-0.5 ~ {Invulnerable:true,NoBasePlate:true,NoGravity:true,ShowArms:true,CustomNameVisible:true,CustomName:{text:"姆咪 Koharu123",color: "#13e6d8",bold:true},DisabledSlots:4144959,Pose:{LeftLeg:[20f,0f,3f],LeftArm:[341f,276f,0f],RightArm:[85f,115f,111f]},equipment: {head: {id: "player_head", components:{profile:{name:"Koharu123"}}, count: 1}, chest: {id: "netherite_chestplate", components: { enchantment_glint_override: true}, count: 1}, legs:{id: "netherite_leggings", components: { enchantment_glint_override: true}, count: 1}, feet:{id: "netherite_boots", components: { enchantment_glint_override: true}, count: 1}, offhand: {id: "minecraft:gray_glazed_terracotta", components: {enchantment_glint_override: true}, count: 1}}, Rotation: [0f,0f], Tags: ["Mumi", "collaborators"]}

# Rose
summon minecraft:armor_stand ~ ~-0.5 ~ {Invulnerable:true,NoBasePlate:true,NoGravity:true,ShowArms:true,CustomNameVisible:true,CustomName:{text:"玫瑰 Rose",color: "#178cec",bold:true},DisabledSlots:4144959,Pose:{LeftLeg:[20f,0f,3f],LeftArm:[341f,276f,0f],RightArm:[85f,115f,111f]},equipment: {head: {id: "player_head", components:{profile:{name:"Rose_OuO"}}, count: 1}, chest: {id: "netherite_chestplate", components: { enchantment_glint_override: true}, count: 1}, legs:{id: "netherite_leggings", components: { enchantment_glint_override: true}, count: 1}, feet:{id: "netherite_boots", components: { enchantment_glint_override: true}, count: 1}, offhand: {id: "minecraft:chiseled_quartz_block", components: {enchantment_glint_override: true}, count: 1}}, Rotation: [0f,0f], Tags: ["Rose", "collaborators"]}

# Lafan
summon minecraft:armor_stand ~ ~-0.5 ~ {Invulnerable:true,NoBasePlate:true,NoGravity:true,ShowArms:true,CustomNameVisible:true,CustomName:{text:"拉凡 tithonian_allosaurus",color: "#0c992d",bold:true},DisabledSlots:4144959,Pose:{LeftLeg:[20f,0f,3f],LeftArm:[341f,276f,0f],RightArm:[85f,115f,111f]},equipment: {head: {id: "player_head", components:{profile:{name:"Allosauridae369"}}, count: 1}, chest: {id: "netherite_chestplate", components: { enchantment_glint_override: true}, count: 1}, legs:{id: "netherite_leggings", components: { enchantment_glint_override: true}, count: 1}, feet:{id: "netherite_boots", components: { enchantment_glint_override: true}, count: 1}, offhand: {id: "minecraft:deepslate_bricks", components: {enchantment_glint_override: true}, count: 1}}, Rotation: [90f,0f], Tags: ["Lafan", "collaborators"]}

# Yelu
summon minecraft:armor_stand ~ ~-0.5 ~ {Invulnerable:true,NoBasePlate:true,NoGravity:true,ShowArms:true,CustomNameVisible:true,CustomName:{text:"野路 orangecat999",color: "#ff890c",bold:true},DisabledSlots:4144959,Pose:{LeftLeg:[20f,0f,3f],LeftArm:[341f,276f,0f],RightArm:[85f,115f,111f]},equipment: {head: {id: "player_head", components:{profile:{name:"black__choco"}}, count: 1}, chest: {id: "netherite_chestplate", components: { enchantment_glint_override: true}, count: 1}, legs:{id: "netherite_leggings", components: { enchantment_glint_override: true}, count: 1}, feet:{id: "netherite_boots", components: { enchantment_glint_override: true}, count: 1}, offhand: {id: "minecraft:reinforced_deepslate", components: {enchantment_glint_override: true}, count: 1}}, Rotation: [90f,0f], Tags: ["Yelu", "collaborators"]}

# AC
summon minecraft:armor_stand ~ ~-0.5 ~ {Invulnerable:true,NoBasePlate:true,NoGravity:true,ShowArms:true,CustomNameVisible:true,CustomName:{text:"AC Alex_Cai",color: "#1c46ff",bold:true},DisabledSlots:4144959,Pose:{LeftLeg:[20f,0f,3f],LeftArm:[341f,276f,0f],RightArm:[85f,115f,111f]},equipment: {head: {id: "player_head", components:{profile:{name:"Alex_Cai"}}, count: 1}, chest: {id: "netherite_chestplate", components: { enchantment_glint_override: true}, count: 1}, legs:{id: "netherite_leggings", components: { enchantment_glint_override: true}, count: 1}, feet:{id: "netherite_boots", components: { enchantment_glint_override: true}, count: 1}, offhand: {id: "minecraft:waxed_weathered_copper_grate", components: {enchantment_glint_override: true}, count: 1}}, Rotation: [180f,0f], Tags: ["AC", "collaborators"]}

#CPK
summon minecraft:armor_stand ~ ~-0.5 ~ {Invulnerable:true,NoBasePlate:true,NoGravity:true,ShowArms:true,CustomNameVisible:true,CustomName:{text:"CPK CPK201314",color: "#c1aabf",bold:true},DisabledSlots:4144959,Pose:{LeftLeg:[20f,0f,3f],LeftArm:[341f,276f,0f],RightArm:[85f,115f,111f]},equipment: {head: {id: "player_head", components:{profile:{name:"CPK201314"}}, count: 1}, chest: {id: "netherite_chestplate", components: { enchantment_glint_override: true}, count: 1}, legs:{id: "netherite_leggings", components: { enchantment_glint_override: true}, count: 1}, feet:{id: "netherite_boots", components: { enchantment_glint_override: true}, count: 1}, offhand: {id: "minecraft:red_carpet", components: {enchantment_glint_override: true}, count: 1}}, Rotation: [270f,0f], Tags: ["CPK", "collaborators"]}

#CPK
summon minecraft:armor_stand ~ ~-0.5 ~ {Invulnerable:true,NoBasePlate:true,NoGravity:true,ShowArms:true,CustomNameVisible:true,CustomName:{text:"狗燈 Gorden",color: "#c1aabf",bold:true},DisabledSlots:4144959,Pose:{LeftLeg:[20f,0f,3f],LeftArm:[341f,276f,0f],RightArm:[85f,115f,111f]},equipment: {head: {id: "player_head", components:{profile:{name:"CPK201314"}}, count: 1}, chest: {id: "netherite_chestplate", components: { enchantment_glint_override: true}, count: 1}, legs:{id: "netherite_leggings", components: { enchantment_glint_override: true}, count: 1}, feet:{id: "netherite_boots", components: { enchantment_glint_override: true}, count: 1}, offhand: {id: "minecraft:red_carpet", components: {enchantment_glint_override: true}, count: 1}}, Rotation: [270f,0f], Tags: ["CPK", "collaborators"]}

#Water_Star
summon minecraft:armor_stand ~ ~-0.5 ~ {Invulnerable:true,NoBasePlate:true,NoGravity:true,ShowArms:true,CustomNameVisible:true,CustomName:{text:"水星 Water_Star0609",color: "#1d79af",bold:true},DisabledSlots:4144959,Pose:{LeftLeg:[20f,0f,3f],LeftArm:[341f,276f,0f],RightArm:[85f,115f,111f]},equipment: {head: {id: "player_head", components:{profile:{name:"Water_Star0609"}}, count: 1}, chest: {id: "netherite_chestplate", components: { enchantment_glint_override: true}, count: 1}, legs:{id: "netherite_leggings", components: { enchantment_glint_override: true}, count: 1}, feet:{id: "netherite_boots", components: { enchantment_glint_override: true}, count: 1}, offhand: {id: "minecraft:end_rod", components: {enchantment_glint_override: true}, count: 1}}, Rotation: [90f,0f], Tags: ["Water_Star", "collaborators"]}

#Gorden
summon minecraft:armor_stand ~ ~-0.5 ~ {Invulnerable:true,NoBasePlate:true,NoGravity:true,ShowArms:true,CustomNameVisible:true,CustomName:{text:"狗燈 gorden111",color: "#f8c312",bold:true},DisabledSlots:4144959,Pose:{LeftLeg:[20f,0f,3f],LeftArm:[341f,276f,0f],RightArm:[85f,115f,111f]},equipment: {head: {id: "player_head", components:{profile:{name:"Gseen"}}, count: 1}, chest: {id: "netherite_chestplate", components: { enchantment_glint_override: true}, count: 1}, legs:{id: "netherite_leggings", components: { enchantment_glint_override: true}, count: 1}, feet:{id: "netherite_boots", components: { enchantment_glint_override: true}, count: 1}, offhand: {id: "minecraft:polished_blackstone_brick_stairs", components: {enchantment_glint_override: true}, count: 1}}, Rotation: [0f,0f], Tags: ["Gorden", "collaborators"]}