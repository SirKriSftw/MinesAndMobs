team add mnm_npcs
team modify mnm_npcs collisionRule never

function mines_and_mobs:npc/_generic/default

# Global IDs for NPCs
execute unless data storage mines_and_mobs:global npc_id run data modify storage mines_and_mobs:global npc_id set value 1