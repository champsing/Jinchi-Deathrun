execute at @n[tag = red_base] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air

data merge entity @n[tag = red_base] {Invulnerable: 0b}

tellraw @a ["",{text:">> ",color:gold},{text: "紅隊",color: red},{text: "陣地已失去無敵狀態，可被攻陣。"}]