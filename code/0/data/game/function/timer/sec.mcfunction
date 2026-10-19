scoreboard players remove .time game 1

#g bossabar update
bossbar set ms:time name [{"text":"sum ct guys😭 | "},{"score":{"name":".ctWon","objective":"game"}},{"text":" | 00:"},{"score":{"name":".time","objective":"game"}},{"text":" | "},{"score":{"name":".tWon","objective":"game"}},{"text":" | sum t guys😭"}]
execute if score .time game matches 0..9 run bossbar set ms:time name [{"text":"sum ct guys😭 | "},{"score":{"name":".ctWon","objective":"game"}},{"text":" | 00:0"},{"score":{"name":".time","objective":"game"}},{"text":" | "},{"score":{"name":".tWon","objective":"game"}},{"text":" | sum t guys😭"}]

schedule function game:timer/sec 1s replace

execute if score .time game matches ..0 if score round.state game matches 0 run function game:round/main
execute if score .time game matches ..0 if score round.state game matches 1 run function game:round/end
execute if score .time game matches ..0 if score round.state game matches 2 run function game:round/start