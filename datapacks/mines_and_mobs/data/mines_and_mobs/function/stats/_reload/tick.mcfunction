# ONLY reload if holding
execute unless items entity @s weapon.mainhand #mines_and_mobs:bow run return 0

# Grab current dmg on item
execute store result score #current_dmg Math run data get entity @s SelectedItem.components."minecraft:damage"

# Get player's dex score
execute store result score #dex_val Math run scoreboard players get @s dex

# Calculate item's current dmg lvl based on dex
scoreboard players operation #current_dmg Math -= #dex_val Math

# Make sure to not go below 0
execute if score #current_dmg Math matches ..0 run scoreboard players set #current_dmg Math 0

# Store in data storage for macro function
execute store result storage mines_and_mobs:repairing new_damage int 1 run scoreboard players get #current_dmg Math

# Apply repair
function mines_and_mobs:stats/_reload/repair with storage mines_and_mobs:repairing

# Reset fields
scoreboard players reset #current_dmg Math
scoreboard players reset #dex_val Math
data remove storage mines_and_mobs:repairing new_damage