# say hit
#g calculate ::
execute if score accuracy g matches ..99 run function guns:shoot/calculateaccuracy
tellraw @a [{"text":"Result: "},{"score":{"name":".result","objective":"accuracy"}},{"text":" | acc: "},{"score":{"name":"accuracy","objective":"g"}}]
execute if score .result accuracy matches 0 run return run function guns:shoot/missrandom

# say hits
particle crit ~ ~ ~ 0.1 0.1 0.1 0.1 10 force @a[distance=0.01..]
damage @s 0.0001 cactus

#g headshot
scoreboard players operation damage_copy g = damage g
execute unless entity @s[distance=..1.65] run scoreboard players operation damage g *= headshotDamageMultiplyer g

#g player penetration penalty
function guns:shoot/hit/penalty/player

#g deal damage
scoreboard players operation @s health -= damage g

#g set damage back to normal
scoreboard players operation damage g = damage_copy g