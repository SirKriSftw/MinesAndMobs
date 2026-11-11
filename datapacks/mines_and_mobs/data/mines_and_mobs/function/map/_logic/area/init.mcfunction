# Get number of init nodes to iterate through
execute store result score #Node_len Math run data get storage mines_and_mobs:map_gen initialNodes

# Early return if no init nodes
execute unless score #Node_len Math >= #1 Constants run scoreboard players reset #Node_len Math
execute unless score #Node_len Math >= #1 Constants run return fail

# Set up LCV for loop
scoreboard players set #Node_index Math 0
data modify storage mines_and_mobs:map_gen node_index set value 0

# Begin loop
function mines_and_mobs:map/_logic/area/loop with storage mines_and_mobs:map_gen

# Clean up
data remove storage mines_and_mobs:map_gen node_index
data remove storage mines_and_mobs:map_gen node
scoreboard players reset #Node_index Math
scoreboard players reset #Node_len Math