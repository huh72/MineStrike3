#g
execute unless block ~ ~ ~ air run return fail

#g deal damage
execute as @n[tag=!dead, distance=..0.3] at @s run return run function grenades:he/explosion/deal_damage

#g debug
particle happy_villager

#g 
scoreboard players add raycast.iterationsHEDamage he 1

#g loop
execute positioned ^ ^ ^0.5 if score raycast.iterationsHEDamage he < raycast.maxIterationsHEDamage he run function grenades:he/explosion/loop