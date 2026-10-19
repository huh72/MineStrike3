playsound ms:usp.fire player @s ~ ~ ~ 0.75 1 1
playsound ms:usp.fire player @a[distance=0.01..] ~ ~2 ~ 3 1 1

scoreboard players remove @s ammo 1
scoreboard players operation @s shot_cd = shot_cd usp

function guns:recoil/1

#g burst
execute if score @s burst_left matches 0 run scoreboard players operation @s burst_left = burst usp
scoreboard players remove @s burst_left 1

#g shot setup
scoreboard players operation damage g = damage usp

scoreboard players operation damage_fade g = damage_fade usp
scoreboard players operation damage_fade_step g = damage_fade_step usp
scoreboard players operation damage_fade_step_const g = damage_fade_step g
scoreboard players operation damage_fade_step g += damage_fade_step_protect guns.general

scoreboard players operation penetration_power g = penetration_power usp

execute positioned ~ ~1.625 ~ run function guns:shoot/start