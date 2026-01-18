function mines_and_mobs:classes/_all/classes

data modify storage mines_and_mobs:temp current_class set from storage mines_and_mobs:classes all[0]

function mines_and_mobs:classes/_all/stats_loop with storage mines_and_mobs:temp

data remove storage mines_and_mobs:classes all
data remove storage mines_and_mobs:temp current_class