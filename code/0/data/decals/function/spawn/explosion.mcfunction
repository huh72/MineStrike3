execute store result score .decalRotation g run random value 0..3 cb:decalrotation

execute if score .decalRotation g matches 0 run summon minecraft:item_display ~ ~0.51 ~ {Tags:['decal', 'explosion'], Rotation:[10f,0f], item:{id:"carrot_on_a_stick",components:{"minecraft:item_model":"ms:explosion"}}}
execute if score .decalRotation g matches 0 run summon minecraft:item_display ~ ~0.01 ~ {Tags:['decal', 'explosion'], Rotation:[10f,0f], item:{id:"carrot_on_a_stick",components:{"minecraft:item_model":"ms:explosion"}}}

execute if score .decalRotation g matches 1 run summon minecraft:item_display ~ ~0.51 ~ {Tags:['decal', 'explosion'], Rotation:[-45f,0f], item:{id:"carrot_on_a_stick",components:{"minecraft:item_model":"ms:explosion"}}}
execute if score .decalRotation g matches 1 run summon minecraft:item_display ~ ~0.01 ~ {Tags:['decal', 'explosion'], Rotation:[-45f,0f], item:{id:"carrot_on_a_stick",components:{"minecraft:item_model":"ms:explosion"}}}

execute if score .decalRotation g matches 2 run summon minecraft:item_display ~ ~0.51 ~ {Tags:['decal', 'explosion'], Rotation:[135f,0f], item:{id:"carrot_on_a_stick",components:{"minecraft:item_model":"ms:explosion"}}}
execute if score .decalRotation g matches 2 run summon minecraft:item_display ~ ~0.01 ~ {Tags:['decal', 'explosion'], Rotation:[135f,0f], item:{id:"carrot_on_a_stick",components:{"minecraft:item_model":"ms:explosion"}}}

execute if score .decalRotation g matches 3 run summon minecraft:item_display ~ ~0.51 ~ {Tags:['decal', 'explosion'], Rotation:[-175f,0f], item:{id:"carrot_on_a_stick",components:{"minecraft:item_model":"ms:explosion"}}}
execute if score .decalRotation g matches 3 run summon minecraft:item_display ~ ~0.01 ~ {Tags:['decal', 'explosion'], Rotation:[-175f,0f], item:{id:"carrot_on_a_stick",components:{"minecraft:item_model":"ms:explosion"}}}