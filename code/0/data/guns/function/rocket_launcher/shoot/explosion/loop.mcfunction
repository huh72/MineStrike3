#g
execute unless block ~ ~ ~ air run return fail

#g deal damage
execute as @n[tag=!dead, distance=..0.3] at @s run return run function guns:rocket_launcher/shoot/explosion/deal_damage

#g debug
particle happy_villager

#g 
scoreboard players add raycast.iterationsRocketDamage g 1

#g loop
execute positioned ^ ^ ^0.5 if score raycast.iterationsRocketDamage g < raycast.maxIterationsRocketDamage g run function guns:rocket_launcher/shoot/explosion/loop