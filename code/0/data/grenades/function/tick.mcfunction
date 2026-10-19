#g per-player handler
execute as @a[tag=!dead] at @s if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={item:grenade}] run function grenades:subtick


#g greande slowcast handler
execute as @e[type=item_display, tag=incindiery] at @s run function grenades:incindiery/loop
execute as @e[type=item_display, tag=he] at @s run function grenades:he/loop

#g fire handler
execute as @e[type=marker, tag=inc_fire] at @s run function grenades:incindiery/fire/handler