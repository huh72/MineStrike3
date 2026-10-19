execute store result score .visualSpread g run random value 0..5 ms:visualspread

execute if score .visualSpread g matches 0..3 run particle crit ^ ^0.25 ^-0.75 0.1 0.1 0.1 0.1 5 force @a
execute if score .visualSpread g matches 4 run particle crit ^0.5 ^0.25 ^-1.15 0.3 0.1 0.2 0.075 4 force @a
execute if score .visualSpread g matches 5 run particle crit ^-0.25 ^0.25 ^-0.65 0.1 0.1 0.1 0.2 2 force @a

playsound minecraft:block.stone.hit ambient @a[distance=..10] ~ ~ ~ 0.75 1.75 1

#g block penetration
execute if block ~ ~ ~ stone run function guns:shoot/hit/penalty/hard
execute if block ~ ~ ~ oak_planks run function guns:shoot/hit/penalty/mid
execute if block ~ ~ ~ terracotta run function guns:shoot/hit/penalty/mild

scoreboard players operation damage g -= damage_penalty_copy g

# tellraw @a [{"text":"out damage: "},{"score":{"name":"damage","objective":"g"}}]