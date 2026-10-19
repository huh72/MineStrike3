#g vars + remove
scoreboard players remove @s g 1
scoreboard players remove @s incindiery 1
execute if score @s incindiery matches 0 run function grenades:incindiery/fire/remove

#g particles
particle flame ~ ~0.1 ~ 0.75 0.25 0.75 0.005 2 force @a

#g damage
execute if score @s g matches 0 run function grenades:incindiery/fire/damage