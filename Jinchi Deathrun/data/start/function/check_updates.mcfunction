scoreboard objectives add version dummy "版本"
# 1.0.0 1
data merge storage start:version_info {verInt: 1, verFloat: 1.0.0, date: "2024/01/01", url: "https://github.com/champsing/Jinchi-Deathrun/releases/"}
execute store result score 包版本 version run data get storage start:version_info verInt 1.0
execute if score 包版本 version <= 本地版本 version run return fail
execute as @e[type = marker, tag = lobby] if score 包版本 version > 本地版本 version run function start:update