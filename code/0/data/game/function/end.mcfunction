execute if score .tWon game >= round.requiredToWin game run say t wins son
execute if score .ctWon game >= round.requiredToWin game run say ct wins son

schedule clear game:timer/sec

bossbar set ms:time visible false