particle crit ~ ~2 ~ 0.1 0.1 0.1 0.3 100
damage @s 0.001 cactus

# execute if score raycast.iterationsRocketDamage g matches 0..1 run scoreboard players operation @s health -= damageR0 rocket_launcher
# execute if score raycast.iterationsRocketDamage g matches 2 run scoreboard players operation @s health -= damageR1 rocket_launcher
# execute if score raycast.iterationsRocketDamage g matches 3 run scoreboard players operation @s health -= damageR2 rocket_launcher
# execute if score raycast.iterationsRocketDamage g matches 4 run scoreboard players operation @s health -= damageR3 rocket_launcher
# execute if score raycast.iterationsRocketDamage g matches 5..6 run scoreboard players operation @s health -= damageR4 rocket_launcher
# execute if score raycast.iterationsRocketDamage g matches 7..8 run scoreboard players operation @s health -= damageR5 rocket_launcher