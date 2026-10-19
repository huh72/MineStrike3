particle explosion ^ ^ ^-0.5 0 0 0 0 1 force

kill @n[type=item_display, tag=drone_model]

tp @s @n[tag=saved_location]
kill @n[type=marker, tag=saved_location]
gamemode creative @s
scoreboard players set @s gun_id 0
tag @s remove drone
scoreboard players set @s health 100

execute positioned ~ ~0.5 ~ as @e[tag=!dead, distance=..4] facing entity @s feet run function drones:explode/start