#g setup bossbar
bossbar set ms:time players @a
bossbar set ms:time visible true

scoreboard players set round.num game 1
scoreboard players operation .time game = round.start game
scoreboard players set round.state game 0

scoreboard players set .ctWon game 0
scoreboard players set .tWon game 0

scoreboard players reset @a playerID
scoreboard players set max playerID 0
tag @e[tag=type.player] remove ini

scoreboard players set @a mvpPoints 0

scoreboard players set player.count game 0
scoreboard players set players.ct game 0
scoreboard players set players.t game 0

#g join team
execute as @e[tag=type.player] run scoreboard players add player.count game 1
execute as @n[tag=type.player, tag=!inTeam] run function game:team/joinct

function game:timer/sec