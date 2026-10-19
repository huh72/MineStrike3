execute as @a[tag=!dead] at @s unless score round.state game matches 0 run function guns:tick
execute as @e[tag=type.player] at @s run function player:tick
function grenades:tick
execute as @e[type=item_display, tag=turret, tag=gun] at @s run function turret:tick
function game:tick
execute as @n[type=item_display, tag=bomb] at @s run function bomb:tick
execute as @e[type=wandering_trader, tag=bot] run function bot:handler

#g drones
execute as @a[tag=drone] at @s run function drones:handler
#g fall handler
execute as @e[type=item_display, tag=drone_model, tag=falling] at @s unless block ~ ~-0.1 ~ air run function drones:fire
execute as @e[type=item_display, tag=drone_model, tag=falling] at @s if block ~ ~-0.1 ~ air run function drones:fall

#g reset right click
scoreboard players set @a right_click 0


#g handle rocket slowcast
execute as @e[type=marker, tag=rocket] at @s anchored eyes positioned ^ ^ ^2 if score @s g matches 1.. run function guns:rocket_launcher/shoot/loop

#g handle auto rocket slowcast
execute as @e[type=marker, tag=lock_on_rocket] at @s anchored eyes positioned ^ ^ ^1 if score @s g matches 1.. run function guns:rocket_launcher_auto/shoot/loop

#g debug
execute at @e[type=marker] run particle crit ~ ~0.25 ~