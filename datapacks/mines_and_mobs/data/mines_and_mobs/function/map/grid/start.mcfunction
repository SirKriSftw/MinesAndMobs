# $(x) $(y) $(z)
# $(rows):i
# $(cols):i
# /function mines_and_mobs:map/grid/start {x:0, y:-55, z:0, rows:15, cols:15}
scoreboard players set _count Math 0
kill @e[tag=map_node]

$function mines_and_mobs:map/grid/step {\
    x:$(x),\
    y:$(y),\
    z:$(z),\
    rows:$(rows),\
    cols:$(cols),\
    curr_row:0,\
    curr_col:0\
}

execute as @e[tag=edge] run item replace entity @s armor.head with minecraft:iron_helmet
execute as @e[tag=corner] run item replace entity @s armor.head with minecraft:golden_helmet

# Reset anything after here
data remove storage mines_and_mobs:math cord
data remove storage mines_and_mobs:math step

scoreboard players reset _x Math
scoreboard players reset _y Math
scoreboard players reset _z Math
scoreboard players reset _count Math
scoreboard players reset _c_rows Math
scoreboard players reset _c_cols Math
scoreboard players reset _is_clear Math
scoreboard players reset _is_corner Math
scoreboard players reset _is_edge Math