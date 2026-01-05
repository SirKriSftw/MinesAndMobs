data remove storage mines_and_mobs:give data
data modify storage mines_and_mobs:give data set from storage mines_and_mobs:default spell

data modify storage mines_and_mobs:give data merge from storage mines_and_mobs:give spell_args

# Breeze rod vs Blaze rod
execute store result score #is_hitscan Math run data get storage mines_and_mobs:give data.is_hitscan
execute if score #is_hitscan Math matches 1 run data modify storage mines_and_mobs:give data.item set value "blaze_rod"
scoreboard players reset #is_hitscan Math

function mines_and_mobs:spells/_give/gen_lore with storage mines_and_mobs:give data

function mines_and_mobs:spells/_give/apply with storage mines_and_mobs:give data
data remove storage mines_and_mobs:give spell_args