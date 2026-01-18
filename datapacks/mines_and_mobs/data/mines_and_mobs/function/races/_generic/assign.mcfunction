data remove storage mines_and_mobs:race race
data modify storage mines_and_mobs:race race set from storage mines_and_mobs:default race

data modify storage mines_and_mobs:race race merge from storage mines_and_mobs:race args

execute if score _showSkin GameOptions matches 0 run data modify storage mines_and_mobs:race race merge value {item:"minecraft:player_head"}
execute if score _showSkin GameOptions matches 1 run data modify storage mines_and_mobs:race race merge value {item:"minecraft:stone_button"}

function mines_and_mobs:races/_generic/do_assign with storage mines_and_mobs:race race

data remove storage mines_and_mobs:race args
data remove storage mines_and_mobs:race race

function mines_and_mobs:stats/apply_all