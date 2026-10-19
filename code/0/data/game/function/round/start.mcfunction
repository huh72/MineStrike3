say new round son
scoreboard players set round.num game 1
scoreboard players operation .time game = round.start game
scoreboard players set round.state game 0

function bomb:remove
kill @e[type=marker, tag=saved_location]
kill @e[type=item_display, tag=decal]
function turret:remove

#g respawn players:
tag @a remove dead
tag @a add type.hittable
scoreboard players set @a health 100

#g tp players to positions:
tag @a add toTp

execute as @p[tag=toTp, tag=t] at @n[type=marker, tag=tSpawnpoint0] run function game:round/tp
execute as @p[tag=toTp, tag=t] at @n[type=marker, tag=tSpawnpoint1] run function game:round/tp
execute as @p[tag=toTp, tag=t] at @n[type=marker, tag=tSpawnpoint2] run function game:round/tp
execute as @p[tag=toTp, tag=t] at @n[type=marker, tag=tSpawnpoint3] run function game:round/tp
execute as @p[tag=toTp, tag=t] at @n[type=marker, tag=tSpawnpoint4] run function game:round/tp

execute as @p[tag=toTp, tag=ct] at @n[type=marker, tag=ctSpawnpoint0] run function game:round/tp
execute as @p[tag=toTp, tag=ct] at @n[type=marker, tag=ctSpawnpoint1] run function game:round/tp
execute as @p[tag=toTp, tag=ct] at @n[type=marker, tag=ctSpawnpoint2] run function game:round/tp
execute as @p[tag=toTp, tag=ct] at @n[type=marker, tag=ctSpawnpoint3] run function game:round/tp
execute as @p[tag=toTp, tag=ct] at @n[type=marker, tag=ctSpawnpoint4] run function game:round/tp

#g give guns:
execute store result score @a game run random value 0..99 ms:gunsrandom

# execute as @a if score @s game matches 0..20 as @a[tag=ct] run function give:usp
# execute as @a if score @s game matches 0..20 as @a[tag=t] run function give:p250

# execute as @a if score @s game matches 21..20 as @a[tag=ct] run function give:usp
# execute as @a if score @s game matches 0..20 as @a[tag=t] run function give:p250

#g clear mvp points
scoreboard players set @a mvpPoints 0