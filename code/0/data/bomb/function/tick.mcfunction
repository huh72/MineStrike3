tag @a remove defusing
# attribute @p[tag=defusing] movement_speed modifier remove 0000-0-0-0-1

#g start defuse
execute if score .defuse bomb matches 1 run function bomb:start_defusing
tag @p[tag=!dead, distance=..0.7, predicate=guns:issneaking] add defusing
#g defuse
execute if score .defuse bomb = .requestedDefuseTime bomb run function bomb:defuse
#g add time
execute if entity @p[tag=defusing] run return run scoreboard players add .defuse bomb 1

#g reset timer if noone is defusin
scoreboard players set .defuse bomb 0