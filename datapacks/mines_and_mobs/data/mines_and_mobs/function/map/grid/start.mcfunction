# $(x) $(y) $(z)
# $(y2):i
# $(rows):i
# $(cols):i
# $(is_clear):b
# /function mines_and_mobs:map/grid/start {x:0, y:-55, z:0, rows:15, cols:15, y2:20, is_clear: false}
scoreboard players set _count Math 0
kill @e[tag=map_chunk]

$function mines_and_mobs:map/grid/step {x:$(x), y:$(y), z:$(z), y2:$(y2), rows:$(rows), cols:$(cols), is_clear: $(is_clear), curr_row:0, curr_col:0}

# Reset anything after here
data remove storage mines_and_mobs:math cord
data remove storage mines_and_mobs:math step