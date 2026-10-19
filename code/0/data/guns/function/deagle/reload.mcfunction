scoreboard players set @s ammo -1
scoreboard players operation @s reload_time = reload_time desert_eagle

playsound ms:deagle.reload player @s ~ ~ ~ 2 1 1
playsound ms:deagle.reload player @a[distance=0.01..] ~ ~ ~ 1 1 1
playsound ms:deagle.draw player @s ~ ~ ~ 2 1 1