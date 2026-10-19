playsound ms:negev.fire player @s ~ ~ ~ 0.5 1 1
playsound ms:negev.fire player @a[distance=0.01..] ~ ~2 ~ 3 1 1

# function guns:recoil/0
function guns:recoil/0

scoreboard players remove @s ammo 1
scoreboard players operation @s shot_cd = shot_cd negev

#g burst
execute if score @s burst_left matches 0 run scoreboard players operation @s burst_left = burst negev
scoreboard players remove @s burst_left 1

#g shot setup
scoreboard players operation damage g = damage negev

scoreboard players operation damage_fade g = damage_fade negev
scoreboard players operation damage_fade_step g = damage_fade_step negev
scoreboard players operation damage_fade_step_const g = damage_fade_step g
scoreboard players operation damage_fade_step g += damage_fade_step_protect guns.general

scoreboard players operation penetration_power g = penetration_power negev

execute positioned ~ ~1.625 ~ run function guns:shoot/start