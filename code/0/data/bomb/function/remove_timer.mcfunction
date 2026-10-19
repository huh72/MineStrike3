scoreboard players add .timer bomb 1

schedule function bomb:remove_timer 1s replace

#g ::
execute if score .timer bomb = .explosion.timer bomb run function bomb:explosion