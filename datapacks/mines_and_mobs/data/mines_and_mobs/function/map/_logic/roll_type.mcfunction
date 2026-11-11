# Roll node using loot table
setblock ~ ~ ~ chest
loot insert ~ ~ ~ loot mines_and_mobs:map_gen/forest/base

# Grab what TYPE was rolled
data modify storage mines_and_mobs:map_gen type set from block ~ ~ ~ Items[0].components."minecraft:custom_data"."mines_and_mobs:node_type"

# Apply what was rolled
function mines_and_mobs:map/_logic/roll_node with storage mines_and_mobs:map_gen

# Reset storage
data remove storage mines_and_mobs:map_gen type