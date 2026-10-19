tag @s add ini

tag @s add type.player
tag @s add type.hittable

scoreboard players set @s health 100

scoreboard players operation @s playerID = max playerID
scoreboard players add max playerID 1