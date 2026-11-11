# Roll node using loot table
$loot insert ~ ~ ~ loot mines_and_mobs:map_gen/forest/types/$(type)

# Grab what was rolled
data modify storage mines_and_mobs:map_gen node set from block ~ ~ ~ Items[1].components."minecraft:custom_data"."mines_and_mobs:map_node"

# Remove chest
setblock ~ ~ ~ air

# Apply what was rolled
function mines_and_mobs:map/_logic/apply_node with storage mines_and_mobs:map_gen

# Reset storage
data remove storage mines_and_mobs:map_gen node