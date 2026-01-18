function mines_and_mobs:races/_all/races

data modify storage mines_and_mobs:temp current_race set from storage mines_and_mobs:races all[0]

function mines_and_mobs:races/_all/stats_loop with storage mines_and_mobs:temp

data remove storage mines_and_mobs:races all
data remove storage mines_and_mobs:temp current_race