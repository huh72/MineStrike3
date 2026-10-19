scoreboard players set @s ammo -1
scoreboard players operation @s reload_time = reload_time p250

playsound ms:p250.reload player @s ~ ~ ~ 2 1 1
playsound ms:p250.reload player @a[distance=0.01..] ~ ~ ~ 1 1 1
playsound ms:p250.draw player @s ~ ~ ~ 2 1 1