# Trigger when trying to open a mimic
advancement revoke @s only mines_and_mobs:enemies/mimic_right

# Null out 'left click' detection
data modify storage mines_and_mobs:temp attack set value []
# Set 'right click' detection to player
data modify storage mines_and_mobs:temp interaction set from entity @s UUID

# Find mimic matching player UUID in interaction NBT
function mines_and_mobs:enemies/types/mimic/activate/find with storage mines_and_mobs:temp