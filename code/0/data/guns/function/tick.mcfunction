#g clear debug
title @a actionbar "gun: none"

#g reset gun id
execute unless items entity @s[tag=!drone] weapon.mainhand minecraft:carrot_on_a_stick run scoreboard players set @s gun_id 0
execute unless items entity @s[tag=!drone] weapon.mainhand minecraft:carrot_on_a_stick run scoreboard players set @s burst_left 0

#g m4a4
execute if items entity @s[scores={gun_id=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:item_name="M4A4"] run scoreboard players operation @s draw_time = draw_time m4a4
execute if items entity @s[scores={gun_id=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:item_name="M4A4"] run playsound ms:m4a4.draw player @s ~ ~10000 ~ 10000 1 1
execute unless items entity @s[scores={gun_id=1, reload_time=1..}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:item_name="M4A4"] run scoreboard players operation @s reload_time = reload_time m4a4
execute if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:item_name="M4A4"] at @s run function guns:m4a4/handler

#g rocket launcher
execute if items entity @s[scores={gun_id=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:item_name="Rocket Launcher"] run scoreboard players operation @s draw_time = draw_time rocket_launcher
execute if items entity @s[scores={gun_id=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:item_name="Rocket Launcher"] run playsound ms:ssg008.draw player @s ~ ~10000 ~ 10000 1 1
execute unless items entity @s[scores={gun_id=2, reload_time=1..}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:item_name="Rocket Launcher"] run scoreboard players operation @s reload_time = reload_time rocket_launcher
execute if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:item_name="Rocket Launcher"] at @s run function guns:rocket_launcher/handler

#g deagle
execute if items entity @s[scores={gun_id=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:item_name="Desert Eagle"] run scoreboard players operation @s draw_time = draw_time desert_eagle
execute if items entity @s[scores={gun_id=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:item_name="Desert Eagle"] run playsound ms:deagle.draw player @s ~ ~10000 ~ 10000 1 1
execute unless items entity @s[scores={gun_id=3, reload_time=1..}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:item_name="Desert Eagle"] run scoreboard players operation @s reload_time = reload_time desert_eagle
execute if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:item_name="Desert Eagle"] at @s run function guns:deagle/handler

#g p250
execute if items entity @s[scores={gun_id=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:item_name="P250"] run scoreboard players operation @s draw_time = draw_time p250
execute if items entity @s[scores={gun_id=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:item_name="P250"] run playsound ms:p250.draw player @s ~ ~10000 ~ 10000 1 1
execute unless items entity @s[scores={gun_id=4, reload_time=1..}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:item_name="P250"] run scoreboard players operation @s reload_time = reload_time p250
execute if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:item_name="P250"] at @s run function guns:p250/handler

#g negev
execute if items entity @s[scores={gun_id=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:item_name="Negev"] run scoreboard players operation @s draw_time = draw_time negev
execute if items entity @s[scores={gun_id=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:item_name="Negev"] run playsound ms:negev.draw player @s ~ ~10000 ~ 10000 1 1
execute unless items entity @s[scores={gun_id=5, reload_time=1..}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:item_name="Negev"] run scoreboard players operation @s reload_time = reload_time negev
execute if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:item_name="Negev"] at @s run function guns:negev/handler

#g usp
execute if items entity @s[scores={gun_id=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:item_name="USP-S"] run scoreboard players operation @s draw_time = draw_time usp
execute if items entity @s[scores={gun_id=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:item_name="USP-S"] run playsound ms:usp.draw player @s ~ ~10000 ~ 10000 1 1
execute unless items entity @s[scores={gun_id=6, reload_time=1..}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:item_name="USP-S"] run scoreboard players operation @s reload_time = reload_time usp
execute if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:item_name="USP-S"] at @s run function guns:usp/handler

#g ak47
execute if items entity @s[scores={gun_id=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:item_name="AK47"] run scoreboard players operation @s draw_time = draw_time ak47
execute if items entity @s[scores={gun_id=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:item_name="AK47"] run playsound ms:ak47.draw player @s ~ ~10000 ~ 10000 1 1
execute unless items entity @s[scores={gun_id=7, reload_time=1..}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:item_name="AK47"] run scoreboard players operation @s reload_time = reload_time ak47
execute if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:item_name="AK47"] at @s run function guns:ak47/handler

#g ssg008
execute if items entity @s[scores={gun_id=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:item_name="SSG008"] run scoreboard players operation @s draw_time = draw_time ssg008
execute if items entity @s[scores={gun_id=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:item_name="SSG008"] run playsound ms:ssg008.draw player @s ~ ~10000 ~ 10000 1 1
execute unless items entity @s[scores={gun_id=8, reload_time=1..}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:item_name="SSG008"] run scoreboard players operation @s reload_time = reload_time ssg008
execute if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:item_name="SSG008"] at @s run function guns:ssg008/handler

#g ssg008
execute if items entity @s[scores={gun_id=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:item_name="LORN"] run scoreboard players operation @s draw_time = draw_time rocket_launcher_auto
execute if items entity @s[scores={gun_id=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:item_name="LORN"] run playsound ms:deagle.draw player @s ~ ~10000 ~ 10000 1 1
execute unless items entity @s[scores={gun_id=9, reload_time=1..}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:item_name="LORN"] run scoreboard players operation @s reload_time = reload_time rocket_launcher_auto
execute if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:item_name="LORN"] at @s run function guns:rocket_launcher_auto/handler

# #g turret
# execute as 

#g recoil handler
execute as @a[scores={recoil=1}] run function guns:recoil/2
execute as @a[scores={recoil=2}] run function guns:recoil/1
execute as @a[scores={recoil=3}] run function guns:recoil/0

scoreboard players remove @a[scores={recoil=1..}] recoil 1