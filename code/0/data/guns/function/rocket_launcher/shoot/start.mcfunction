#g create entity
summon marker ~ ~ ~ {Tags:['rocket', 'new']}
data modify entity @n[type=marker, tag=rocket, tag=new] Rotation set from entity @p Rotation

#g setup vars
scoreboard players operation @n[type=marker, tag=rocket, tag=new] g = raycast.maxIterationsRocket g
scoreboard players operation @n[type=marker, tag=rocket, tag=new] playerID = @p playerID


tag @n[type=marker, tag=rocket, tag=new] remove new