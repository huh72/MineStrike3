
#g accuracy math :: rely on distance - fixed (const)
scoreboard players remove accuracy_penalty_step g 1
execute if score accuracy_penalty_step g matches 0 run scoreboard players operation accuracy g -= accuracy_penalty g
execute if score accuracy_penalty_step g matches 0 run scoreboard players operation accuracy_penalty_step g = accuracy_penalty_step_const g 

#g calculate acc in guns:shoot/hit/entity = on hit -->

#g block hit ::
execute unless block ~ ~ ~ air run function guns:shoot/hit/block
#g entity hit regester ::
execute positioned ~ ~.6 ~ as @n[tag=type.hittable, tag=turret, distance=..0.45] positioned ~ ~-.6 ~ run function guns:shoot/hit/entity
execute if score .result accuracy matches 0 run return fail
execute as @n[tag=type.hittable, tag=!turret, dx=0] unless score @s teamID = teamID g positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run function guns:shoot/hit/entity
execute if score .result accuracy matches 0 run return fail

# execute as @n[tag=turret, tag=gun, distance=..2] unless score @s playerID = playerID g run function guns:shoot/hit/entity
# execute if score .result accuracy matches 0 run return fail
# execute as @n[tag=drone, distance=..2] run function guns:shoot/hit/entity
# execute if score .result accuracy matches 0 run return fail
# execute as @n[tag=!dead, tag=!drone, dx=0] unless score @s playerID = playerID g positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run function guns:shoot/hit/entity
# execute if score .result accuracy matches 0 run return fail

#g debug
execute if predicate guns:10 run particle composter ~ ~ ~ 0 0 0 0 1 force @a

#g remove var
scoreboard players remove raycast.iterations g 1

#g gun damage reduce due to bullet fly distance
scoreboard players remove damage_fade_step g 1
execute if score damage_fade_step g matches 0 run scoreboard players operation damage g -= damage_fade g
execute if score damage_fade_step g matches 0 run scoreboard players operation damage_fade_step g = damage_fade_step_const g 

#g stop the bullet if it has no damage
execute if score damage g matches ..0 run particle enchanted_hit ~ ~ ~ 0 0 0 0.45 3 force @a
execute if score damage g matches ..0 run return fail

#g continue loop
execute unless block ~ ~ ~ air if score raycast.iterations g matches 0.. positioned ^ ^ ^0.99 run return run function guns:shoot/loop
execute if score raycast.iterations g matches 0.. positioned ^ ^ ^0.66 run function guns:shoot/loop