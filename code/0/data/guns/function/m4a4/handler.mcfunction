#g debug
title @s actionbar [{"text":"gun: m4a4 | ammo: "},{"score":{"name":"@s","objective":"ammo"}}]

#g variables
scoreboard players set @s gun_id 1
scoreboard players remove @s[scores={shot_cd=1..}] shot_cd 1
scoreboard players remove @s[scores={draw_time=1..}] draw_time 1

#g draw handler
execute if score @s draw_time matches 1.. run return fail

#g reload handler
scoreboard players remove @s[scores={ammo=-1}] reload_time 1
execute if score @s ammo matches -1 if score @s reload_time matches 0 run scoreboard players operation @s ammo = mag_size m4a4 
execute if score @s ammo matches 0 run return run function guns:m4a4/reload
execute if score @s ammo matches -1 run return fail

#g fire func call
execute if score @s shot_cd matches 0 if score @s burst_left matches 1.. run return run function guns:m4a4/fire
execute if score @s[tag=!defusing] shot_cd matches 0 if score @s right_click matches 1.. run function guns:m4a4/fire