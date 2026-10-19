#g create entity
summon marker ~ ~ ~ {Tags:['lock_on_rocket', 'new']}
data modify entity @n[type=marker, tag=lock_on_rocket, tag=new] Rotation set from entity @p Rotation

#g setup vars
scoreboard players operation @n[type=marker, tag=lock_on_rocket, tag=new] g = raycast.maxIterationsAutoRocket g
scoreboard players operation @n[type=marker, tag=lock_on_rocket, tag=new] playerID = @p playerID


tag @n[type=marker, tag=lock_on_rocket, tag=new] remove new