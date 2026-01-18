execute unless score _state GameStates matches 1 run function mines_and_mobs:game/timer/reset
execute at @s run particle minecraft:portal ~ ~ ~ 0.2 0 0.2 0 20

scoreboard players set _state GameStates 1

title @a times 0s 0.5s 0.5s
execute if score _Timer Timer matches 2 if score _Seconds Seconds matches 0 run title @a title "10..."
execute if score _Timer Timer matches 2 if score _Seconds Seconds matches 1 run title @a title "9..."
execute if score _Timer Timer matches 2 if score _Seconds Seconds matches 2 run title @a title "8..."
execute if score _Timer Timer matches 2 if score _Seconds Seconds matches 3 run title @a title "7..."
execute if score _Timer Timer matches 2 if score _Seconds Seconds matches 4 run title @a title "6..."
execute if score _Timer Timer matches 2 if score _Seconds Seconds matches 5 run title @a title "5..."
execute if score _Timer Timer matches 2 if score _Seconds Seconds matches 6 run title @a title "4..."
execute if score _Timer Timer matches 2 if score _Seconds Seconds matches 7 run title @a title "3..."
execute if score _Timer Timer matches 2 if score _Seconds Seconds matches 8 run title @a title "2..."
execute if score _Timer Timer matches 2 if score _Seconds Seconds matches 9 run title @a title "1..."


execute if score _Seconds Seconds matches 10 run function mines_and_mobs:game/start/game