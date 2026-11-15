data modify storage mines_and_mobs:game_master.enemies frequency set value 20
data modify storage mines_and_mobs:game_master.enemies chance set value 50
data modify storage mines_and_mobs:game_master.enemies max set value 3
data modify storage mines_and_mobs:game_master.enemies pool set value "mines_and_mobs:enemy_pools/basic"

scoreboard objectives add Dungeon_Enemies dummy "Dungeon Enemies"
scoreboard players reset _try_spawn Dungeon_Enemies
scoreboard players reset _max_enemies Dungeon_Enemies
scoreboard players reset _total_enemies Dungeon_Enemies