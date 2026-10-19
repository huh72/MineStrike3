give @s minecraft:carrot_on_a_stick[minecraft:item_name="Negev",minecraft:item_model="ms:negev"]

scoreboard players set @s ammo 150
scoreboard players operation @s draw_time = draw_time negev
scoreboard players set @s burst_left 0
scoreboard players set @s shot_cd 0