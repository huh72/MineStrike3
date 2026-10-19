#g spawn entity
execute positioned ^ ^ ^.5 run summon item_display ~ ~ ~ {Tags:['he'],item:{id:"minecraft:green_dye"}}
data modify entity @n[type=item_display, tag=he] Rotation set from entity @s Rotation

scoreboard players operation @n[type=item_display, tag=he] he = slowcast.maxIterations he
scoreboard players operation @n[type=item_display, tag=he] playerID = @s playerID

item replace entity @s weapon.mainhand with air