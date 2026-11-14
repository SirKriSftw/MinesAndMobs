# Run generic init function
function mines_and_mobs:map/_logic/area/init

# Roll rest of nodes
function mines_and_mobs:map/_logic/apply_func {func: "mines_and_mobs:map/_logic/roll_type"}

# Clean up
tag @e[type=armor_stand, tag=map_node] remove map_node_set
data remove storage mines_and_mobs:map_gen initialNodes