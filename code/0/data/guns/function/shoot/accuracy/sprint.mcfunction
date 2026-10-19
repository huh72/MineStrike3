say sprint
scoreboard players operation accuracy_penalty_step g -= accuracy_penalty_step_protect g
scoreboard players add accuracy_penalty_step g 2

scoreboard players remove accuracy_penalty_step_const g 5
execute if score accuracy_penalty_step_const g matches 0 run scoreboard players add accuracy_penalty_step_const g 5
scoreboard players remove accuracy_penalty_step_const g 4
execute if score accuracy_penalty_step_const g matches 0 run scoreboard players add accuracy_penalty_step_const g 4
scoreboard players remove accuracy_penalty_step_const g 3
execute if score accuracy_penalty_step_const g matches 0 run scoreboard players add accuracy_penalty_step_const g 3
scoreboard players remove accuraaccuracy_penalty_step_constcy_penalty_step g 2
execute if score accuracy_penalty_step_const g matches 0 run scoreboard players add accuracy_penalty_step_const g 2
scoreboard players remove accuraaccuracy_penalty_step_constcy_penalty_step g 1
execute if score accuracy_penalty_step_const g matches 0 run scoreboard players add accuracy_penalty_step_const g 1
