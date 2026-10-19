playsound ms:m4a4.fire player @s ~ ~ ~ 0.5 1 1
playsound ms:m4a4.fire player @a[distance=0.01..] ~ ~2 ~ 3 1 1

function guns:recoil/0

scoreboard players remove @s ammo 1
scoreboard players operation @s shot_cd = shot_cd m4a4

#g burst
scoreboard players remove @s burst_left 1
execute if score @s burst_left matches -1 run scoreboard players operation @s burst_left = burst m4a4

#g shot setup
scoreboard players operation damage g = damage m4a4

scoreboard players operation damage_fade g = damage_fade m4a4
scoreboard players operation damage_fade_step g = damage_fade_step m4a4
scoreboard players operation damage_fade_step_const g = damage_fade_step g
scoreboard players operation damage_fade_step g += damage_fade_step_protect guns.general

scoreboard players operation penetration_power g = penetration_power m4a4

#g acc
scoreboard players operation accuracy_penalty g = accuracy_penalty m4a4
scoreboard players operation accuracy_penalty_step g = accuracy_penalty_step m4a4
scoreboard players operation accuracy_penalty_step_const g = accuracy_penalty_step g
scoreboard players operation accuracy_penalty_step g += accuracy_penalty_step_protect guns.general

execute positioned ~ ~1.625 ~ run function guns:shoot/start