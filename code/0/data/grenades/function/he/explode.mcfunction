particle crit ~ ~0.5 ~ 0.1 0.1 0.1 0.3 10 force @a
particle crit ~ ~0.5 ~ 0 0 0 0.6 25 force @a
particle explosion ~ ~0.5 ~ 0.1 0.1 0.1 0 2 force @a
kill @s

execute positioned ~ ~0.5 ~ as @e[tag=!dead, distance=..4] facing entity @s feet run function grenades:he/explosion/start