#g other configs
function guns:config
function player:config
function drones:config
function grenades:config
function bomb:config
function game:config

#g 
scoreboard objectives add right_click minecraft.used:carrot_on_a_stick

#g gamerules
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doEntityDrops false
gamerule doMobSpawning false
gamerule doMobLoot false
gamerule fallDamage false
gamerule locatorBar false
gamerule showDeathMessages false

tellraw @a [{"text":"Loaded!"}]
time set 1000
# gamemode