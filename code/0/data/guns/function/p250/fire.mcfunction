playsound ms:p250.fire player @s ~ ~ ~ 0.65 1 1
playsound ms:p250.fire player @a[distance=0.01..] ~ ~2 ~ 3 1 1


scoreboard players remove @s ammo 1
scoreboard players operation @s shot_cd = shot_cd p250

function guns:recoil/1

#g burst
execute if score @s burst_left matches 0 run scoreboard players operation @s burst_left = burst p250
scoreboard players remove @s burst_left 1

#g shot setup
scoreboard players operation damage g = damage p250

scoreboard players operation damage_fade g = damage_fade p250
scoreboard players operation damage_fade_step g = damage_fade_step p250
scoreboard players operation damage_fade_step_const g = damage_fade_step g
scoreboard players operation damage_fade_step g += damage_fade_step_protect guns.general

scoreboard players operation penetration_power g = penetration_power p250

execute positioned ~ ~1.625 ~ run function guns:shoot/start