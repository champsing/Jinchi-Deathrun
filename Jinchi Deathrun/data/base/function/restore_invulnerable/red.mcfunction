execute at @n[tag = red_base] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air

tag @n[tag = red_base] remove invulnerable

tellraw @a ["",{text:">> ",color:gold},{text: "紅隊",color: red},{text: "陣地已失去無敵狀態，可被攻陣。"}]