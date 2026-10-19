playsound ms:ak47.fire player @s ~ ~ ~ 0.5 1 1
playsound ms:ak47.fire player @a[distance=0.01..] ~ ~2 ~ 3 1 1

scoreboard players remove @s ammo 1
scoreboard players operation @s shot_cd = shot_cd ak47

function guns:recoil/0

#g burst
scoreboard players remove @s burst_left 1
execute if score @s burst_left matches -1 run scoreboard players operation @s burst_left = burst ak47

#g shot setup
scoreboard players operation damage g = damage ak47

scoreboard players operation damage_fade g = damage_fade ak47
scoreboard players operation damage_fade_step g = damage_fade_step ak47
scoreboard players operation damage_fade_step_const g = damage_fade_step g
scoreboard players operation damage_fade_step g += damage_fade_step_protect guns.general

scoreboard players operation penetration_power g = penetration_power ak47

execute positioned ~ ~1.625 ~ run function guns:shoot/start