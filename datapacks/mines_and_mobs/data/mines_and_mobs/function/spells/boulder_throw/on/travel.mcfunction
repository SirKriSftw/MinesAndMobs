# Calculate particle size ---
execute store result storage mines_and_mobs:temp scale float 0.05 run data get entity @s data.age
execute store result score #scale Math run data get storage mines_and_mobs:temp scale
# Max size of 4
execute if score #scale Math matches 4.. run data modify storage mines_and_mobs:temp scale set value 4
scoreboard players reset #scale Math

# Particle ------
function mines_and_mobs:spells/boulder_throw/helper/particle with storage mines_and_mobs:temp
data remove storage mines_and_mobs:temp scale