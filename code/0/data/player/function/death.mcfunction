clear @s
scoreboard players set @s health 999
tag @s remove type.hittable

gamemode spectator @s

spectate @p[tag=ct] @s[tag=ct]
spectate @p[tag=t] @s[tag=t]