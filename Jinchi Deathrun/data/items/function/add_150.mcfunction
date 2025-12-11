scoreboard players add @s score 150

tellraw @a ["",{text:">> ",color:gold},{selector:"@s"},{text:"使用了"},{text:"加分道具",color:gold},{text:" 增加了"},{text:"150分",color:gold}]
advancement revoke @s only items:add_150