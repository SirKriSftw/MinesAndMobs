# Return early if not in correct game state
execute unless score _state GameStates matches 3 run return fail

$scoreboard players set #temp Math $(frequency)
execute store result score _try_spawn Dungeon_Enemies run scoreboard players operation _total_ticks Dungeon_Timer %= #temp Math
scoreboard players reset #temp Math

execute if score _try_spawn Dungeon_Enemies matches 0 run function mines_and_mobs:enemies/_spawning/1_try_spawn with storage mines_and_mobs:game_master.enemies