summon minecraft:item_display ~ ~ ~ {Tags:['drone_model'],item:{id:"minecraft:redstone",components:{"minecraft:item_model":"ms:drone"}}}

summon minecraft:marker ~ ~ ~ {Tags:['saved_location']}
tp @n[tag=saved_location] @s
scoreboard players operation @n[tag=saved_location] playerID = @s playerID
scoreboard players operation @n[tag=drone_model] playerID = @s playerID
scoreboard players set @s gun_id -1
scoreboard players set @s health 200

gamemode spectator @s
tag @s add drone