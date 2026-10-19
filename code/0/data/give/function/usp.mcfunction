give @s minecraft:carrot_on_a_stick[minecraft:item_name="USP-S",minecraft:item_model="ms:usp"]

scoreboard players set @s ammo 12
scoreboard players operation @s draw_time = draw_time usp
scoreboard players set @s burst_left 0
scoreboard players set @s shot_cd 0