#g spawn entity
execute positioned ^ ^ ^.5 run summon item_display ~ ~ ~ {Tags:['incindiery'],item:{id:"minecraft:red_dye"}}
data modify entity @n[type=item_display, tag=incindiery] Rotation set from entity @s Rotation

scoreboard players operation @n[type=item_display, tag=incindiery] incindiery = slowcast.maxIterations incindiery
scoreboard players operation @n[type=item_display, tag=incindiery] playerID = @s playerID

item replace entity @s weapon.mainhand with air