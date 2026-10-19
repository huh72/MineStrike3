scoreboard players set @s ammo -1
scoreboard players operation @s reload_time = reload_time ssg008

playsound ms:ssg008.reload player @s ~ ~ ~ 2 1 1
playsound ms:ssg008.reload player @a[distance=0.01..] ~ ~ ~ 1 1 1
playsound ms:ssg008.draw player @s ~ ~ ~ 2 1 1