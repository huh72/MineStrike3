scoreboard players remove @s ammo 1
scoreboard players operation @s shot_cd = shot_cd m4a4

#g burst
execute if score @s burst_left matches 0 run scoreboard players operation @s burst_left = burst m4a4
scoreboard players remove @s burst_left 1

#g shot setup
scoreboard players operation damage g = damage m4a4

scoreboard players operation damage_fade g = damage_fade m4a4
scoreboard players operation damage_fade_step g = damage_fade_step m4a4
scoreboard players operation damage_fade_step_const g = damage_fade_step g
scoreboard players operation damage_fade_step g += damage_fade_step_protect guns.general

scoreboard players operation penetration_power g = penetration_power m4a4

execute positioned ~ ~1.625 ~ run function guns:shoot/start