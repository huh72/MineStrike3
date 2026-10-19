playsound ms:ssg008.fire player @s ~ ~ ~ 0.6 1 1
playsound ms:ssg008.fire player @a[distance=0.01..] ~ ~2 ~ 3 1 1

scoreboard players remove @s ammo 1
scoreboard players operation @s shot_cd = shot_cd ssg008

function guns:recoil/0

#g burst
execute if score @s burst_left matches 0 run scoreboard players operation @s burst_left = burst ssg008
scoreboard players remove @s burst_left 1

#g shot setup
scoreboard players operation damage g = damage ssg008

scoreboard players operation damage_fade g = damage_fade ssg008
scoreboard players operation damage_fade_step g = damage_fade_step ssg008
scoreboard players operation damage_fade_step_const g = damage_fade_step g
scoreboard players operation damage_fade_step g += damage_fade_step_protect guns.general

scoreboard players operation penetration_power g = penetration_power ssg008

#g acc
scoreboard players operation accuracy_penalty g = accuracy_penalty ssg008
scoreboard players operation accuracy_penalty_step g = accuracy_penalty_step ssg008
scoreboard players operation accuracy_penalty_step_const g = accuracy_penalty_step g
scoreboard players operation accuracy_penalty_step g += accuracy_penalty_step_protect guns.general

execute positioned ~ ~1.625 ~ run function guns:shoot/start