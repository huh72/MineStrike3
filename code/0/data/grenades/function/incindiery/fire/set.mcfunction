summon marker ~-1.25 ~ ~1.25 {Tags:['inc_fire', 'new']}
summon marker ~ ~ ~1.25 {Tags:['inc_fire', 'new']}
summon marker ~1.25 ~ ~1.25 {Tags:['inc_fire', 'new']}

summon marker ~-1.25 ~ ~ {Tags:['inc_fire', 'new']}
summon marker ~ ~ ~ {Tags:['inc_fire', 'new']}
summon marker ~1.25 ~ ~ {Tags:['inc_fire', 'new']}

summon marker ~-1.25 ~ ~-1.25 {Tags:['inc_fire', 'new']}
summon marker ~ ~ ~-1.25 {Tags:['inc_fire', 'new']}
summon marker ~1.25 ~ ~-1.25 {Tags:['inc_fire', 'new']}

#g fire remove (if in air/wall)
execute as @e[type=marker, tag=inc_fire, tag=new] at @s unless block ~ ~ ~ air run kill @s
execute as @e[type=marker, tag=inc_fire, tag=new] at @s if block ~ ~-1 ~ air run kill @s

scoreboard players operation @e[tag=inc_fire, tag=new] playerID = @n[tag=incindiery] playerID
scoreboard players operation @e[tag=inc_fire, tag=new] incindiery = fireLifeTime incindiery
scoreboard players set @e[tag=inc_fire, tag=new] g 1

tag @e[tag=inc_fire, tag=new] remove new