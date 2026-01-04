function mines_and_mobs:game/start/main
function mines_and_mobs:game/timer/main
function mines_and_mobs:game/crouch_detection

execute as @e[tag=slow_cast] at @s run function mines_and_mobs:game/ray/slow/step with entity @s data

tag @e[tag=hit] remove hit