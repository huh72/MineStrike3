#g debug
title @s actionbar "gun: drone"

#g align player and model
tp @n[type=item_display, tag=drone_model] ~ ~1 ~
data modify entity @n[type=item_display, tag=drone_model] Rotation[0] set from entity @s Rotation[0]

#g drop ability
execute if score @s health matches ..0 run function drones:drop

#g explode
execute unless block ~ ~1 ~ air run return run function drones:explode
execute unless block ~ ~ ~ air run return run function drones:explode
execute if entity @n[type=!marker, tag=!dead, tag=!drone, tag=!drone_model, distance=..1.25] run function drones:explode