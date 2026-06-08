# $(x) $(y) $(z)
$summon armor_stand $(x) $(y) $(z) {Tags:["map_node"], Glowing:1b, NoGravity:1b, Small:1b}
$execute if score _is_corner Math matches 1 positioned $(x) $(y) $(z) run tag @e[tag=map_node, limit=1,sort=nearest] add corner
$execute if score _is_edge Math matches 1 positioned $(x) $(y) $(z) run tag @e[tag=map_node, limit=1,sort=nearest] add edge