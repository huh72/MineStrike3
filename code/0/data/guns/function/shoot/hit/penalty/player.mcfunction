scoreboard players operation damage_penalty g = damage g
scoreboard players operation damage_penalty_copy g = damage_penalty g 
scoreboard players operation damage_penalty g /= block.player g 
scoreboard players operation damage_penalty_copy g -= damage_penalty g 
scoreboard players set constMultiplier g 10
scoreboard players set constDivider0 g 10
scoreboard players set constDivider1 g 100
scoreboard players operation constDivider1 g -= penetration_power g 
scoreboard players operation constDivider1 g /= constDivider0 g 
scoreboard players operation damage_penalty_copy g *= constMultiplier g 
scoreboard players operation damage_penalty_copy g *= constDivider1 g 
scoreboard players set constDivider1 g 100
scoreboard players operation damage_penalty_copy g /= constDivider1 g