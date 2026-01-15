data remove storage mines_and_mobs:race race
data modify storage mines_and_mobs:race race set from storage mines_and_mobs:default race

data modify storage mines_and_mobs:race race merge from storage mines_and_mobs:race args
function mines_and_mobs:races/_generic/do_assign with storage mines_and_mobs:race race
data remove storage mines_and_mobs:race args

data remove storage mines_and_mobs:race race