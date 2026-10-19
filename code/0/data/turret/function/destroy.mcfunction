scoreboard players remove @a[tag=!dead, distance=..3] health 63

particle crit ~ ~ ~ 0.5 0.5 0.5 0.1 25 force
particle explosion ~ ~0.5 ~ 0.75 0.5 0.75 0 7 force
playsound ms:rocket_launcher.explosion ambient @a ~ ~ ~ 5 1 1

execute at @n[type=item_display, tag=turret, tag=gun] positioned ~ ~-1.5 ~ run function decals:spawn/explosion

execute as @n[tag=turret, tag=hitbox] at @s run tp @s ~ ~-20 ~
kill @e[tag=turret, distance=..2]