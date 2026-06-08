# /function mines_and_mobs:map/_logic/apply_func {func: "mines_and_mobs:map/gen/clear/run"}
# Y: -64 ... 320
data modify storage mines_and_mobs:temp clear_y1 set value -64i

function mines_and_mobs:map/gen/clear/loop with storage mines_and_mobs:temp

data remove storage mines_and_mobs:temp clear_y1
data remove storage mines_and_mobs:temp clear_y2
scoreboard players reset clear_y2 Math