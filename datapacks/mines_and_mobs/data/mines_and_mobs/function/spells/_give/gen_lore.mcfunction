# Check Spell Properties ---
execute store result score #pierce_mobs Math run data get storage mines_and_mobs:give data.p_mobs
execute store result score #pierce_blocks Math run data get storage mines_and_mobs:give data.p_blocks
execute store result score #bounce Math run data get storage mines_and_mobs:give data.bounce
execute store result score #chain Math run data get storage mines_and_mobs:give data.chain

# Build Lore ---
execute if score #pierce_mobs Math matches 1 run data modify storage mines_and_mobs:spell lore append value {"text": "Pierce", "color":"gold", "italic": false}
execute if score #pierce_blocks Math matches 1 run data modify storage mines_and_mobs:spell lore append value {"text": "Phase", "color":"blue", "italic": false}
execute if score #bounce Math matches 1 run data modify storage mines_and_mobs:spell lore append value {"text": "Bounce", "color":"red", "italic": false}
execute if score #chain Math matches 1 run data modify storage mines_and_mobs:spell lore append value {"text": "Chain", "color":"aqua", "italic": false}
$data modify storage mines_and_mobs:spell lore append value {"text": "Range $(range) | Speed $(speed)", "color":"white", "italic": false, "underlined":true}

# Save Lore to Storage ---
data modify storage mines_and_mobs:give data.lore set from storage mines_and_mobs:spell lore

# Clear Up ---
data remove storage mines_and_mobs:spell lore 
scoreboard players reset #pierce_mobs Math
scoreboard players reset #pierce_blocks Math
scoreboard players reset #bounce Math
scoreboard players reset #chain Math