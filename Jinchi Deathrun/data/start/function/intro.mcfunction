# >> 歡迎遊玩 陣地大逃殺
# >> 作者: 香榭 Champsing
# >> 若想解除安裝資料包，請點擊 此處
# >> 左鍵敲擊作者可重新顯示

#---給予反應---
execute positioned as @e[type = interaction, tag = champsing] run particle flash ~ ~ ~ 0.1 0.1 0.1 0.3 1 normal
playsound block.medium_amethyst_bud.break master @s ~ ~ ~ 1 0.8 1

tellraw @a [{translate: jd.empty},{translate:"jd.console",color:gold},"歡迎遊玩 ",{translate:jd.base.function.success.17_2,bold:true,color:gold},{translate:jd.game.function.prepare.emerald.22_2,bold:true,color:red}]
tellraw @a [{translate: jd.empty},{translate:"jd.console",color:gold},"作者: ",{translate:jd.start.function.intro.11_1,bold:true,color:aqua,hover_event: {action: "show_text", value: "點擊複製 Discord 使用者名稱"}, click_event: {action: "copy_to_clipboard", value: "champsing"}}]
tellraw @a[gamemode = creative] [{translate: jd.empty},{translate:"jd.console",color:gold},"若想解除安裝資料包，請點擊 ",{translate:jd.start.function.intro.12_1,color:gold, hover_event: {action: "show_text", value: "/function start:uninstall/mode"}, click_event: {action: "run_command", command: "/function start:uninstall/mode"}}]
execute if score 操作模式 system matches 1 run tellraw @a[gamemode = creative] [{translate: jd.empty},{translate:"jd.console",color:gold},{translate:jd.start.function.intro.13_1},{text:"",color:gold},{translate:jd.start.function.intro.13_5},{translate:jd.start.function.intro.12_1,underlined: true,bold: true, color: aqua,click_event: {action: "run_command",command: "/function edit:give"},hover_event: {action: "show_text",value: [{translate:jd.start.function.intro.13_4}]}},{translate:jd.start.function.intro.13_5},{translate:jd.start.function.intro.13_6}]
tellraw @a [{translate: jd.empty},{translate:"jd.console",color:gold},"左鍵敲擊作者可重新顯示"]

advancement revoke @s only start:hit_champsing