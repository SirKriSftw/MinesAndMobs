# Setup vil home
data modify storage mines_and_mobs:npc vil.pos insert 0 from entity @p Pos[0]
data modify storage mines_and_mobs:npc vil.pos insert 1 from entity @p Pos[1]
data modify storage mines_and_mobs:npc vil.pos insert 2 from entity @p Pos[2]

# Summon both entities w/ defaults ===
# Mannequin
data remove storage mines_and_mobs:npc args
data modify storage mines_and_mobs:npc args set from storage mines_and_mobs:default model
data modify storage mines_and_mobs:npc args merge from storage mines_and_mobs:npc model
function mines_and_mobs:npc/_generic/summon/1_model with storage mines_and_mobs:npc args

# Villager
data remove storage mines_and_mobs:npc args
data modify storage mines_and_mobs:npc args set from storage mines_and_mobs:default vil
data modify storage mines_and_mobs:npc args merge from storage mines_and_mobs:npc vil
function mines_and_mobs:npc/_generic/summon/2_villager with storage mines_and_mobs:npc args
# ===

# Link them by UUID
execute as @e[type=mannequin, tag=mnm_man, limit=1, sort=nearest, distance=..2] at @s run \
    function mines_and_mobs:npc/_generic/summon/3_model_owner with entity @e[type=villager, tag=mnm_vil, limit=1, sort=nearest, distance=..2]
    
execute as @e[type=villager, tag=mnm_vil, limit=1, sort=nearest, distance=..2] at @s run \
    function mines_and_mobs:npc/_generic/summon/4_vil_owner with entity @e[type=mannequin, tag=mnm_man, limit=1, sort=nearest, distance=..2]

# Clean up
data remove storage mines_and_mobs:npc vil
data remove storage mines_and_mobs:npc model
#data remove storage mines_and_mobs:npc args