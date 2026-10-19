execute store result score .spawnpos bomb run random value 0..2 ms3:bombpos

execute if score .spawnpos bomb matches 0 at @n[tag=bomb.pos0] run summon minecraft:item_display ~ ~0.5 ~ {Tags:['bomb'], Rotation:[30f,0f], item:{id:"minecraft:flint",components:{"item_model":"ms:bomb"}}}
execute if score .spawnpos bomb matches 1 at @n[tag=bomb.pos1] run summon minecraft:item_display ~ ~0.5 ~ {Tags:['bomb'], Rotation:[-45f,0f], item:{id:"minecraft:flint",components:{"item_model":"ms:bomb"}}}
execute if score .spawnpos bomb matches 2 at @n[tag=bomb.pos2] run summon minecraft:item_display ~ ~0.5 ~ {Tags:['bomb'], Rotation:[100f,0f], item:{id:"minecraft:flint",components:{"item_model":"ms:bomb"}}}

#g playsound ...

scoreboard players set .timer bomb 0
schedule function bomb:remove_timer 1s replace