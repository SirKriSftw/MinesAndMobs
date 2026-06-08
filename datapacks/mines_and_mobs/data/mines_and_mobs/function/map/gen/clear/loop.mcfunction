$scoreboard players set clear_y2 Math $(clear_y1)
scoreboard players add clear_y2 Math 16
execute store result storage mines_and_mobs:temp clear_y2 int 1 run scoreboard players get clear_y2 Math

function mines_and_mobs:map/gen/clear/fill with storage mines_and_mobs:temp

execute store result storage mines_and_mobs:temp clear_y1 int 1 run scoreboard players get clear_y2 Math
execute unless score clear_y2 Math >= #320 Constants run function mines_and_mobs:map/gen/clear/loop with storage mines_and_mobs:temp