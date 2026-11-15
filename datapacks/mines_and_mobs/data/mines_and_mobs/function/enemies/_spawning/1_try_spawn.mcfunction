execute store result score _total_enemies Dungeon_Enemies if entity @e[type=#mines_and_mobs:enemy, tag=enemy]
execute store result score _max_enemies Dungeon_Enemies run data get storage mines_and_mobs:game_master.enemies max
execute unless score _total_enemies Dungeon_Enemies < _max_enemies Dungeon_Enemies run return fail

execute store result score #temp2 Math run random value 1..100

$scoreboard players set #temp Math $(chance)
execute if score #temp Math >= #temp2 Math run function mines_and_mobs:enemies/_spawning/2_find_location

scoreboard players reset #temp Math
scoreboard players reset #temp2 Math