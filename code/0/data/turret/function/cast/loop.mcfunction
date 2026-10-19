#g debug
execute if predicate guns:10 run particle composter ~ ~ ~ 0 0 0 0 1 force

#g detect player
execute positioned ~ ~-1.5 ~ as @n[tag=type.hittable, distance=..0.5] unless score @s teamID = @n[tag=.temp] teamID run tag @s add target

#g block hit
execute unless block ~ ~ ~ air run return fail

#g add distance
scoreboard players remove raycast.iterations g 1
#g loop
execute positioned ^ ^ ^0.33 if score raycast.iterations g matches 0.. run function turret:cast/loop