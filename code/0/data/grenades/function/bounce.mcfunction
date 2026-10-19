execute store result score rotation g run data get entity @s Rotation[0]

execute unless block ~-1 ~ ~ air run execute store result storage grenade:bounce rotation int 1 run scoreboard players operation rotation g *= -1 g
execute unless block ~1 ~ ~ air run say X(+) y z 1
execute unless block ~ ~ ~-1 air run say x y Z(-) 1
execute unless block ~ ~ ~1 air run say x y z(+) 1

execute unless block ~-2 ~ ~ air run execute store result storage grenade:bounce rotation int 1 run scoreboard players operation rotation g *= -1 g
execute unless block ~2 ~ ~ air run say X(+) y z
execute unless block ~ ~ ~-2 air run say x y Z(-)
execute unless block ~ ~ ~2 air run say x y z(+)

function grenades:rotate with storage greande:bounce