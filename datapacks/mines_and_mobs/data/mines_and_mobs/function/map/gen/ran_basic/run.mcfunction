# /function mines_and_mobs:map/_logic/apply_func {func: "mines_and_mobs:map/gen/ran_basic/ran_basic"}
execute store result storage mines_and_mobs:temp list_len int 1 run data get storage mines_and_mobs:map_template_pools test
execute store result storage mines_and_mobs:temp list_index int 1 run function mines_and_mobs:z_utility/ran_index with storage mines_and_mobs:temp

function mines_and_mobs:map/gen/ran_basic/get_block with storage mines_and_mobs:temp

data remove storage mines_and_mobs:temp list_len
data remove storage mines_and_mobs:temp list_index
data remove storage mines_and_mobs:temp fill_block