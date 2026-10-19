#g move
tp @s ^ ^ ^1.4 ~ ~1

#g hit check
execute unless block ^ ^ ^0.7 air run return run function grenades:he/explode
execute unless block ^ ^ ^1.4 air run return run function grenades:he/explode

#g bounce check
function grenades:bounce

#g remove
scoreboard players remove @s he 1

#g 
execute if score @s he matches 0 run return run function grenades:he/explode

#g particle
particle minecraft:dust{color:[0.7, 0.9, 0.1], scale:1} ~ ~ ~ 0.025 0.1 0.025 0.001 1 force @a