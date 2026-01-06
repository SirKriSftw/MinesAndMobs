# $(x1) $(y1) $(z1)
# $(x2) $(y2) $(z2)
$summon armor_stand $(x1) $(y1) $(z1) {Tags:["map_chunk"], Glowing:1b, NoGravity:1b, Small:1b}
$execute if score _is_corner Math matches 1 positioned $(x1) $(y1) $(z1) run tag @e[tag=map_chunk, limit=1,sort=nearest] add corner
$execute if score _is_edge Math matches 1 positioned $(x1) $(y1) $(z1) run tag @e[tag=map_chunk, limit=1,sort=nearest] add edge
$execute if score _is_clear Math matches 1 positioned $(x1) $(y1) $(z1) run tag @e[tag=map_chunk, limit=1,sort=nearest] add clear_marker
$execute unless score _is_clear Math matches 1 positioned $(x1) $(y1) $(z1) run tag @e[tag=map_chunk, limit=1,sort=nearest] add new_map_marker

#$fill $(x1) $(y1) $(z1) $(x2) $(y2) $(z2) minecraft:air