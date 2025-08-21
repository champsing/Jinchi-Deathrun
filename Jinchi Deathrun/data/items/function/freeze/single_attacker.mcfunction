# 凍結-單人
# @s 使用單人凍結的攻擊者
# at: Server

clear @s packed_ice[custom_data={freeze: "single"}] 1
tellraw @a [{text:">> ", color: gold},{selector: "@s"},{text: "使用了"},{text: "凍結-單人", color: gold},{text: "，"},{selector: "@a[tag = item.freeze_single.target]"},{text: "已被"},{text:"凍結", color: gold},{text: "，無法移動"}]