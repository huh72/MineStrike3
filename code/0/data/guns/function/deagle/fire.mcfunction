playsound ms:deagle.fire player @s ~ ~ ~ 0.6 1 1
playsound ms:deagle.fire player @a[distance=0.01..] ~ ~2 ~ 3 1 1

scoreboard players remove @s ammo 1
scoreboard players operation @s shot_cd = shot_cd desert_eagle

function guns:recoil/0

#g burst
execute if score @s burst_left matches 0 run scoreboard players operation @s burst_left = burst desert_eagle
scoreboard players remove @s burst_left 1

#g shot setup
scoreboard players operation damage g = damage desert_eagle

scoreboard players operation damage_fade g = damage_fade desert_eagle
scoreboard players operation damage_fade_step g = damage_fade_step desert_eagle
scoreboard players operation damage_fade_step_const g = damage_fade_step g
scoreboard players operation damage_fade_step g += damage_fade_step_protect guns.general

scoreboard players operation penetration_power g = penetration_power desert_eagle

execute positioned ~ ~1.625 ~ run function guns:shoot/start