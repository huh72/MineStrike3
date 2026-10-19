summon wandering_trader ~ ~ ~ {Tags:['bot', 'type.player', 'type.hittable', 'new'], attributes:[{id:"minecraft:scale", base:0.65}], Invulnarable:1b, Inbisible:1b, Silent:1b, PersistanceRequired:1b, Passengers:[{id:"minecraft:armor_stand", Tags:['bot_hitbox0'], attributes:[{id:"minecraft:scale", base:0.001}], Invulnarable:1b, Inbisible:1b, Silent:1b, PersistanceRequired:1b, Marker:1b, NoBasePlate:1b, Passengers:[{id:"minecraft:shulker", Tags:["bot_hitbox1"], attributes:[{id:"minecraft:scale", base:0.8}], Invulnarable:1b, Inbisible:1b, Silent:1b, PersistanceRequired:1b, NoAI:1b}]}]}

effect give @n[tag=bot] regeneration infinite 10 true
effect give @n[tag=bot_hitbox0] regeneration infinite 10 true
effect give @n[tag=bot_hitbox1] regeneration infinite 10 true

effect give @n[tag=bot_hitbox1] invisibility infinite 1 true