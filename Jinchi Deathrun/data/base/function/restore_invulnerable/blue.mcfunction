execute at @e[tag = blue_base] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air

data merge entity @n[tag = blue_base] {Invulnerable: 0b}

tellraw @a ["",{text:">> ",color:gold},{text: "藍隊",color: "blue"},{text: "陣地已失去無敵狀態，可被攻陣。"}]