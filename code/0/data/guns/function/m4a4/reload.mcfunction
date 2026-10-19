playsound ms:m4a4.reload player @s ~ ~ ~ 2 1 1
playsound ms:m4a4.reload player @a[distance=0.01..] ~ ~ ~ 1 1 1
playsound ms:m4a4.draw player @s ~ ~ ~ 2 1 1

scoreboard players set @s ammo -1
scoreboard players operation @s reload_time = reload_time m4a4