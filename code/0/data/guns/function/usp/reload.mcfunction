scoreboard players set @s ammo -1
scoreboard players operation @s reload_time = reload_time usp

playsound ms:usp.reload player @s ~ ~ ~ 2 1 1
playsound ms:usp.reload player @a[distance=0.01..] ~ ~ ~ 1 1 1
playsound ms:usp.draw player @s ~ ~ ~ 2 1 1