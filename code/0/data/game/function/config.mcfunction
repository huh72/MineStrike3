bossbar add ms:time "$time: init name$"
bossbar set ms:time players @a
bossbar set ms:time visible true

scoreboard objectives add game dummy
scoreboard objectives add teamID dummy
scoreboard objectives add mvpPoints dummy
scoreboard players set round.start game 5
scoreboard players set round.main game 60
scoreboard players set round.end game 3

scoreboard players set round.requiredToWin game 8