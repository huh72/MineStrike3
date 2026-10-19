execute store result score .visualSpread g run random value 0..5 ms:visualspread

execute if score .visualSpread g matches 0..2 at @s facing entity @p[distance=0.01..] feet positioned ^0.25 ^ ^1.5 run particle crit ~ ~0.25 ~ 0.05 0.05 0.05 0.1 5 force @a
execute if score .visualSpread g matches 3..4 at @s facing entity @p[distance=0.01..] feet positioned ^-0.45 ^ ^0.9 run particle crit ~ ~0.25 ~ 0.05 0.05 0.05 0.125 3 force @a
execute if score .visualSpread g matches 5 at @s facing entity @p[distance=0.01..] feet positioned ^0.65 ^ ^1.1 run particle crit ~ ~0.25 ~ 0.05 0.05 0.05 0.2 2 force @a