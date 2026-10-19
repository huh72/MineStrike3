tp @s ~ ~ ~

particle cloud ~ ~ ~ 0.1 0.1 0.1 0.01 1 force @a

#g entity hit
execute unless score @s playerID = @n[tag=!dead, tag=!rocket, distance=..1.8] playerID run return run function guns:rocket_launcher/shoot/explode

#g block hit check
execute unless block ^ ^ ^0.5 air run function guns:rocket_launcher/shoot/explode
execute unless block ^ ^ ^1 air run function guns:rocket_launcher/shoot/explode
execute unless block ^ ^ ^1.5 air run function guns:rocket_launcher/shoot/explode
execute unless block ^ ^ ^2 air run function guns:rocket_launcher/shoot/explode

#g reached limit
scoreboard players remove @s g 1
execute if score @s g matches 0 run function guns:rocket_launcher/shoot/explode