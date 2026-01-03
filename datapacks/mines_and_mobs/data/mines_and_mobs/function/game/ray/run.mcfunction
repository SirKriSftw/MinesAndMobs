execute store result storage mines_and_mobs:ray use.range float 1 run data get entity @s SelectedItem.components."minecraft:custom_data".range

execute store result storage mines_and_mobs:ray use.p_mobs byte 1 run data get entity @s SelectedItem.components."minecraft:custom_data".p_mobs
execute store result storage mines_and_mobs:ray use.p_blocks byte 1 run data get entity @s SelectedItem.components."minecraft:custom_data".p_blocks
execute store result storage mines_and_mobs:ray use.bounce byte 1 run data get entity @s SelectedItem.components."minecraft:custom_data".bounce

data modify storage mines_and_mobs:ray use.on_hit_mob set from entity @s SelectedItem.components."minecraft:custom_data".on_hit_mob
data modify storage mines_and_mobs:ray use.on_hit_block set from entity @s SelectedItem.components."minecraft:custom_data".on_hit_block

data modify storage mines_and_mobs:ray use.particle set from entity @s SelectedItem.components."minecraft:custom_data".particle

function mines_and_mobs:game/ray/cast with storage mines_and_mobs:ray use