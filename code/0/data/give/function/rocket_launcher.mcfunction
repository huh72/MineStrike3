give @s minecraft:carrot_on_a_stick[minecraft:item_name="Rocket Launcher",minecraft:item_model="ms:rocket_launcher"]

scoreboard players set @s ammo 1
scoreboard players operation @s draw_time = draw_time rocket_launcher
scoreboard players set @s burst_left 0
scoreboard players set @s shot_cd 0