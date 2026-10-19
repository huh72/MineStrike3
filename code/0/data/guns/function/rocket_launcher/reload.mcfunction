scoreboard players set @s ammo -1
scoreboard players operation @s reload_time = reload_time rocket_launcher

playsound ms:rocket_launcher.reload player @s ~ ~ ~ 2 1 1
playsound ms:rocket_launcher.reload player @a[distance=0.01..] ~ ~ ~ 1 1 1
playsound ms:rocket_launcher.draw player @s ~ ~ ~ 2 1 1