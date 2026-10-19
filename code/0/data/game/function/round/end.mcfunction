scoreboard players operation .time game = round.end game
scoreboard players set round.state game 2

execute if score .tWon game >= round.requiredToWin game run function game:end
execute if score .ctWon game >= round.requiredToWin game run function game:end