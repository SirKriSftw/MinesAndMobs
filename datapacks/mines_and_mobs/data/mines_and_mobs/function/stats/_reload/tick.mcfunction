data merge storage mines_and_mobs:temp {current_item:0}
function mines_and_mobs:stats/_reload/find with storage mines_and_mobs:temp

scoreboard players reset #current_item Math
data remove storage mines_and_mobs:temp current_item