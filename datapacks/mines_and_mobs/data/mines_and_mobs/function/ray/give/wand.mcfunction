data remove storage mines_and_mobs:give data
data modify storage mines_and_mobs:give data set from storage mines_and_mobs:default use

data modify storage mines_and_mobs:give data merge from storage mines_and_mobs:give args
function mines_and_mobs:ray/give/apply_data with storage mines_and_mobs:give data
data remove storage mines_and_mobs:give args