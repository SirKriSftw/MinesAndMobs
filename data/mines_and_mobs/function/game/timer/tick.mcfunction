scoreboard players add _Timer Timer 1
execute if score _Timer Timer matches 20 run scoreboard players add _Seconds Seconds 1
execute if score _Seconds Seconds matches 60 run scoreboard players set _Seconds Seconds 0
execute if score _Timer Timer matches 20 run scoreboard players set _Timer Timer 0