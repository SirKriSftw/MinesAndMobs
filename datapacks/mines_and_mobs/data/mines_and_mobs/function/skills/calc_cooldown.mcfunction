# Calculate Cast Time ---
execute store result score @s skillCastTime run data get entity @s SelectedItem.components."minecraft:consumable".consume_seconds
scoreboard players operation @s skillCastTime *= #100 Constants
scoreboard players operation @s skillCastTime *= @s cooldownPercentage
scoreboard players operation @s skillCastTime /= #100 Constants
execute if score @s skillCastTime < #10 Constants run scoreboard players set @s skillCastTime 10

# Calculate Cooldown ---
execute store result score @s skillCooldowns run data get entity @s SelectedItem.components."minecraft:use_cooldown".seconds
scoreboard players operation @s skillCooldowns *= #100 Constants
scoreboard players operation @s skillCooldowns *= @s cooldownPercentage
scoreboard players operation @s skillCooldowns /= #100 Constants
execute if score @s skillCooldowns < #10 Constants run scoreboard players set @s skillCooldowns 10

# Store Values ---
execute store result storage mines_and_mobs:int cast.cast_time float 0.01 run scoreboard players get @s skillCastTime
execute store result storage mines_and_mobs:int cast.cooldown_time float 0.01 run scoreboard players get @s skillCooldowns
data modify storage mines_and_mobs:int cast.cast_sound set from entity @s SelectedItem.components."minecraft:consumable".sound
data modify storage mines_and_mobs:int cast.cast_animation set from entity @s SelectedItem.components."minecraft:consumable".animation
data modify storage mines_and_mobs:int cast.skill_group set from entity @s SelectedItem.components."minecraft:use_cooldown".cooldown_group

# Apply Cooldown ---
function mines_and_mobs:skills/apply_cooldown with storage mines_and_mobs:int cast

# Cleanup ---
data remove storage mines_and_mobs:int cast