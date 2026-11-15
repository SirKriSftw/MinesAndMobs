# (3) game state == in dungeon
execute unless score _state GameStates matches 3 run return fail

# Every game tick +1
scoreboard players add _total_ticks Dungeon_Timer 1
scoreboard players add _ticks Dungeon_Timer 1

# If not at 20 ticks nothing to do
execute unless score _ticks Dungeon_Timer matches 20 run return fail

# Every 20 ticks == 1 second
scoreboard players add _seconds Dungeon_Timer 1
scoreboard players set _ticks Dungeon_Timer 0

# If not at 60 seconds nothing to do
execute unless score _seconds Dungeon_Timer matches 60 run return fail

# Every 60 seconds == 1 min
scoreboard players add _mins Dungeon_Timer 1
scoreboard players set _seconds Dungeon_Timer 0

# If not at 60 mins nothing to do
execute unless score _mins Dungeon_Timer matches 60 run return fail

# Every 60 mins == 1 hr
scoreboard players add _hours Dungeon_Timer 1
scoreboard players set _mins Dungeon_Timer 0