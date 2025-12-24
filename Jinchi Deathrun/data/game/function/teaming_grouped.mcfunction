# x 個人獲得 x% 加成，x ≧ 2
scoreboard players operation $team_bonus team_score = @s team_score
scoreboard players operation $team_bonus team_score /= 一百 readonly
scoreboard players operation $team_bonus team_score *= @s grouped
scoreboard players operation @s team_score += $team_bonus team_score
