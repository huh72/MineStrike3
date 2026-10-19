playsound ms:ak47.reload player @s ~ ~ ~ 2 1 1
playsound ms:ak47.reload player @a[distance=0.01..] ~ ~ ~ 1 1 1
playsound ms:ak47.reload player @s ~ ~ ~ 2 1 1

scoreboard players set @s ammo -1
scoreboard players operation @s reload_time = reload_time ak47