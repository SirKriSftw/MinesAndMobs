# Stop once index matches array length
execute if score #Node_index Math >= #Node_len Math run return fail

# Apply node from index
$data modify storage mines_and_mobs:map_gen node set from storage mines_and_mobs:map_gen initialNodes[$(node_index)]
execute as @e[type=armor_stand, tag=map_node, tag=!map_node_set, tag=!map_processing, limit=1, sort=random] at @s \
    run function mines_and_mobs:map/_logic/area/set_node with storage mines_and_mobs:map_gen

# Increment LCV and loop
scoreboard players add #Node_index Math 1
execute store result storage mines_and_mobs:map_gen node_index int 1 run scoreboard players get #Node_index Math
function mines_and_mobs:map/_logic/area/loop with storage mines_and_mobs:map_gen