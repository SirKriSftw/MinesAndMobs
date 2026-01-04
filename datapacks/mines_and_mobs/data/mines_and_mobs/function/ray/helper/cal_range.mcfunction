# Load Speed and Range data into scoreboards to perform operations
execute store result score .speed_factor Math run data get storage mines_and_mobs:ray use.speed 1000000
execute store result score .range_factor Math run data get storage mines_and_mobs:ray use.range 

# Get speed coefficient (1000000 / speed)
scoreboard players operation #1000000 Math /= .speed_factor Math
# Adjust range by speed coefficient (range * speed_coefficient)
scoreboard players operation #1000000 Math *= .range_factor Math
execute store result storage mines_and_mobs:ray use.range float 1 run scoreboard players get #1000000 Math

# Clean up
scoreboard players reset .speed_factor Math
scoreboard players reset .range_factor Math
scoreboard players set #1000000 Math 1000000