#g
execute unless block ~ ~ ~ air run return fail

#g deal damage
execute as @n[tag=!dead, distance=..0.3] at @s run return run function drones:explode/deal_damage
#g debug
particle happy_villager

#g 
scoreboard players add raycast.iterationsDroneDamage g 1

#g loop
execute positioned ^ ^ ^0.5 if score raycast.iterationsDroneDamage g < raycast.maxIterationsDroneDamage g run function drones:explode/loop