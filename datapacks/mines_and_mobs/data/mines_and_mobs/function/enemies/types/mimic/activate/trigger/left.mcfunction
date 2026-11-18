# Trigger when hitting a mimic
advancement revoke @s only mines_and_mobs:enemies/mimic_left

# Null out 'right click' detection
data modify storage mines_and_mobs:temp interaction set value []
# Set 'left click' detection to player
data modify storage mines_and_mobs:temp attack set from entity @s UUID

# Find mimic matching player UUID in attack NBT
function mines_and_mobs:enemies/types/mimic/activate/find with storage mines_and_mobs:temp