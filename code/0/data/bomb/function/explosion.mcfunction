execute at @n[tag=bomb] run particle explosion_emitter ~ ~10 ~ 10 10 10 0 100 force @a

function bomb:remove
schedule clear bomb:remove_timer

scoreboard players add .tWon game 1

scoreboard players add @a[tag=t] mvpPoints 10