#g move
tp @s ^ ^ ^1.6 ~ ~1

#g bounce check
execute unless block ^ ^ ^0.25 air run return run function grenades:bounce
execute unless block ^ ^ ^0.5 air run return run function grenades:bounce
execute unless block ^ ^ ^0.75 air run return run function grenades:bounce
execute unless block ^ ^ ^0.9 air run return run function grenades:bounce
execute unless block ^ ^ ^1.25 air run return run function grenades:bounce
execute unless block ^ ^ ^1.33 air run return run function grenades:bounce
execute unless block ^ ^ ^1.66 air run return run function grenades:bounce
execute unless block ^ ^ ^1.75 air run return run function grenades:bounce

#g hit check
execute unless block ^ ^ ^0.8 air run return run function grenades:incindiery/explode
execute unless block ^ ^ ^1.6 air run return run function grenades:incindiery/explode

#g remove
scoreboard players remove @s incindiery 1

#g 
execute if score @s incindiery matches 0 run return run function grenades:incindiery/explode

#g particle
particle flame ~ ~ ~ 0.025 0.1 0.025 0.001 1 force @a