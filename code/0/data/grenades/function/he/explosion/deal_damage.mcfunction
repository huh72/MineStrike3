particle crit ~ ~2 ~ 0.1 0.1 0.1 0.1 10
damage @s 0.001 cactus

execute if score raycast.iterationsHEDamage he matches 0..1 run scoreboard players operation @s health -= explosion.damage0 he
execute if score raycast.iterationsHEDamage he matches 2..3 run scoreboard players operation @s health -= explosion.damage1 he
execute if score raycast.iterationsHEDamage he matches 4..5 run scoreboard players operation @s health -= explosion.damage2 he
execute if score raycast.iterationsHEDamage he matches 6..8 run scoreboard players operation @s health -= explosion.damage3 he