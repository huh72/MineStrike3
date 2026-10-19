say walk
scoreboard players remove accuracy_penalty_step_const g 2
execute if score accuracy_penalty_step_const g matches 0 run scoreboard players add accuracy_penalty_step_const g 2
scoreboard players remove accuracy_penalty_step_const g 1
execute if score accuracy_penalty_step g matches 0 run scoreboard players add accuracy_penalty_step_const g 1