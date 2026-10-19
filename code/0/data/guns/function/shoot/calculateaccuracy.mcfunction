#g roll chance
execute store result score .chance accuracy run random value 0..99 ms:accuracy

#g reset
scoreboard players set .result accuracy 0

#g check for match
execute if score accuracy g matches 0..10 if score .chance accuracy matches 0..10 run scoreboard players set .result accuracy 1
execute if score accuracy g matches 11..20 if score .chance accuracy matches 0..20 run scoreboard players set .result accuracy 1
execute if score accuracy g matches 21..30 if score .chance accuracy matches 0..30 run scoreboard players set .result accuracy 1
execute if score accuracy g matches 31..40 if score .chance accuracy matches 0..40 run scoreboard players set .result accuracy 1
execute if score accuracy g matches 41..50 if score .chance accuracy matches 0..50 run scoreboard players set .result accuracy 1
execute if score accuracy g matches 51..60 if score .chance accuracy matches 0..60 run scoreboard players set .result accuracy 1
execute if score accuracy g matches 61..70 if score .chance accuracy matches 0..70 run scoreboard players set .result accuracy 1
execute if score accuracy g matches 71..80 if score .chance accuracy matches 0..80 run scoreboard players set .result accuracy 1
execute if score accuracy g matches 81..90 if score .chance accuracy matches 0..90 run scoreboard players set .result accuracy 1
execute if score accuracy g matches 91..99 if score .chance accuracy matches 0..99 run scoreboard players set .result accuracy 1

execute if score accuracy g matches ..0 run scoreboard players set .result accuracy 0