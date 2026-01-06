# $(x) $(y) $(z)
# $(y2):i
# $(rows):i
# $(cols):i
# /function mines_and_mobs:map/clear/start {x:0, y:-55, z:0, rows:15, cols:15, y2:20}
scoreboard players set _count Math 0
kill @e[tag=map_chunk]
$function mines_and_mobs:map/clear/step {x:$(x), y:$(y), z:$(z), y2:$(y2), rows:$(rows), cols:$(cols), curr_row:0, curr_col:0}