#g visuals
summon minecraft:item_display ~ ~1.5 ~ {Tags:['turret', 'gun', 'type.hittable', 'new'], item:{id:"carrot_on_a_stick",components:{"minecraft:item_model":"ms:turret"}}}
summon minecraft:item_display ~ ~1.15 ~ {Tags:['turret', 'base', 'type.hittable', 'new'], item:{id:"carrot_on_a_stick",components:{"minecraft:item_model":"ms:turret_base"}}}

summon minecraft:item_display ~ ~0.74 ~0.2 {Tags:['turret', 'leg', 'type.hittable', 'new'], Rotation:[0f,0f], item:{id:"carrot_on_a_stick",components:{"minecraft:item_model":"ms:turret_leg"}}}
summon minecraft:item_display ~0.2 ~0.74 ~-0.2 {Tags:['turret', 'leg', 'type.hittable', 'new'], Rotation:[-135f,0f], item:{id:"carrot_on_a_stick",components:{"minecraft:item_model":"ms:turret_leg"}}}
summon minecraft:item_display ~-0.2 ~0.74 ~-0.2 {Tags:['turret', 'leg', 'type.hittable', 'new'], Rotation:[-225,0f], item:{id:"carrot_on_a_stick",components:{"minecraft:item_model":"ms:turret_leg"}}}

#g hitbox
summon armor_stand ~ ~ ~ {Tags:['turret', 'hitbox', 'new'], attributes:[{id:"minecraft:scale", base:0.1}], Invisible:1b, PersistenceRequired:1b, NoAI:1b, Invulnarable:1b, Sinelt:1b, Passengers:[{id:"minecraft:shulker", Tags:['turret', 'hitbox', 'new'], NoAI:1b, Invulnarable:1b, Sinelt:1b}]}
effect give @n[type=shulker, tag=turret, tag=hitbox] invisibility infinite 1 true

scoreboard players operation @e[type=item_display, tag=turret, tag=new] health = .health turret
scoreboard players set @n[type=item_display, tag=turret, tag=gun, tag=new] shot_cd 1
scoreboard players set @n[type=item_display, tag=turret, tag=gun, tag=new] burst_left 0
scoreboard players operation @e[type=item_display, tag=turret, tag=new] turret = lookCheckCd turret
scoreboard players operation @e[type=item_display, tag=turret, tag=new] playerID = @p playerID
scoreboard players operation @e[type=item_display, tag=turret, tag=new] teamID = @p teamID

tag @e[type=item_display, tag=turret] remove new