tp @s @n[tag=saved_location]
kill @n[type=marker, tag=saved_location]
gamemode creative @s
scoreboard players set @s gun_id 0
tag @s remove drone

tag @n[type=item_display, tag=drone_model] add falling