# Clear Old Data ----
data remove storage mines_and_mobs:ray use

# Set Default Values ----
data modify storage mines_and_mobs:ray use set from storage mines_and_mobs:default use

execute store result storage mines_and_mobs:ray use.speed float 1 run data get entity @s SelectedItem.components."minecraft:custom_data".speed

execute store result storage mines_and_mobs:ray use.range float 10 run data get entity @s SelectedItem.components."minecraft:custom_data".range

execute unless data storage mines_and_mobs:ray {use:{speed:0.0f}} run data modify storage mines_and_mobs:ray use.tag set value "slow_cast"
execute if data storage mines_and_mobs:ray {use:{speed:0.0f}} run data modify storage mines_and_mobs:ray use.tag set value "hit_scan"

execute if data storage mines_and_mobs:ray {use:{speed:0.0f}} run data modify storage mines_and_mobs:ray use.speed set value 0.1f

execute store result storage mines_and_mobs:ray use.p_mobs byte 1 run data get entity @s SelectedItem.components."minecraft:custom_data".p_mobs
execute store result storage mines_and_mobs:ray use.p_blocks byte 1 run data get entity @s SelectedItem.components."minecraft:custom_data".p_blocks
execute store result storage mines_and_mobs:ray use.bounce byte 1 run data get entity @s SelectedItem.components."minecraft:custom_data".bounce
execute store result storage mines_and_mobs:ray use.chain byte 1 run data get entity @s SelectedItem.components."minecraft:custom_data".chain

data modify storage mines_and_mobs:ray use.on_hit_mob set from entity @s SelectedItem.components."minecraft:custom_data".on_hit_mob
data modify storage mines_and_mobs:ray use.on_hit_block set from entity @s SelectedItem.components."minecraft:custom_data".on_hit_block

data modify storage mines_and_mobs:ray use.particle set from entity @s SelectedItem.components."minecraft:custom_data".particle
data modify storage mines_and_mobs:ray use.end_particle set from entity @s SelectedItem.components."minecraft:custom_data".end_particle

data modify storage mines_and_mobs:ray use.particle_data set from entity @s SelectedItem.components."minecraft:custom_data".particle_data
data modify storage mines_and_mobs:ray use.end_particle_data set from entity @s SelectedItem.components."minecraft:custom_data".end_particle_data

execute anchored eyes at @s positioned ^ ^ ^ run function mines_and_mobs:game/ray/cast with storage mines_and_mobs:ray use