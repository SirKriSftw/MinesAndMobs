# Clear Old Data ----
data remove storage mines_and_mobs:ray use

# Set Default Values ----
data modify storage mines_and_mobs:ray use set from storage mines_and_mobs:default use

execute store result storage mines_and_mobs:ray use.is_hitscan byte 1 run data get entity @s SelectedItem.components."minecraft:custom_data".is_hitscan
# Convert 1 speed into 1 block per tick (20 ticks per second 0.05 -> 1/20)
execute store result storage mines_and_mobs:ray use.speed float 0.05 run data get entity @s SelectedItem.components."minecraft:custom_data".speed

execute store result storage mines_and_mobs:ray use.range float 1 run data get entity @s SelectedItem.components."minecraft:custom_data".range
function mines_and_mobs:ray/helper/cal_range with storage mines_and_mobs:ray use 

execute unless data storage mines_and_mobs:ray {use:{is_hitscan:0}} run data modify storage mines_and_mobs:ray use.tag set value "slow_cast"
execute if data storage mines_and_mobs:ray {use:{is_hitscan:1b}} run data modify storage mines_and_mobs:ray use.tag set value "hit_scan"

execute store result storage mines_and_mobs:ray use.p_mobs byte 1 run data get entity @s SelectedItem.components."minecraft:custom_data".p_mobs
execute store result storage mines_and_mobs:ray use.p_blocks byte 1 run data get entity @s SelectedItem.components."minecraft:custom_data".p_blocks
execute store result storage mines_and_mobs:ray use.bounce byte 1 run data get entity @s SelectedItem.components."minecraft:custom_data".bounce
execute store result storage mines_and_mobs:ray use.chain byte 1 run data get entity @s SelectedItem.components."minecraft:custom_data".chain

data modify storage mines_and_mobs:ray use.on_travel set from entity @s SelectedItem.components."minecraft:custom_data".on_travel
data modify storage mines_and_mobs:ray use.on_hit_mob set from entity @s SelectedItem.components."minecraft:custom_data".on_hit_mob
data modify storage mines_and_mobs:ray use.on_hit_block set from entity @s SelectedItem.components."minecraft:custom_data".on_hit_block
data modify storage mines_and_mobs:ray use.on_end set from entity @s SelectedItem.components."minecraft:custom_data".on_end

execute anchored eyes at @s positioned ^ ^ ^ run function mines_and_mobs:ray/_logic/cast with storage mines_and_mobs:ray use