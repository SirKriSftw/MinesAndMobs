$data modify storage mines_and_mobs:temp fill_block set from storage mines_and_mobs:map_template_pools test[$(list_index)]
execute if entity @s[tag=edge] run data modify storage mines_and_mobs:temp fill_block set value "minecraft:gray_concrete"

function mines_and_mobs:map/gen/ran_basic_edges/fill with storage mines_and_mobs:temp