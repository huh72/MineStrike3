playsound ms:rocket_launcher.fire player @s ~ ~ ~ 0.25 1 1
playsound ms:rocket_launcher.fire player @a[distance=0.01..] ~ ~2 ~ 3 1 1

scoreboard players remove @s ammo 1

function guns:recoil/0

execute anchored eyes positioned ~ ~1.75 ~ run function guns:rocket_launcher/shoot/start