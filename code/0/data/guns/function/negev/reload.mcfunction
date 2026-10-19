scoreboard players set @s ammo -1
scoreboard players operation @s reload_time = reload_time negev

playsound ms:negev.reload player @s ~ ~ ~ 2 1 1
playsound ms:negev.reload player @a[distance=0.01..] ~ ~ ~ 1 1 1
playsound ms:negev.draw player @s ~ ~ ~ 2 1 1