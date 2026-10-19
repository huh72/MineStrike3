execute as @a at @s run playsound ms:rocket_launcher.explosion ambient @s ~ ~ ~ 0.1 1 1

particle explosion ^ ^ ^-0.5 0 0 0 0 1 force
kill @s

execute positioned ~ ~0.5 ~ as @a[tag=!dead, distance=..4] facing entity @s feet run function guns:rocket_launcher/shoot/explosion/start