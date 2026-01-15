# Assign an ID
execute store result entity @s data.npc_id int 1 run data get storage mines_and_mobs:global npc_id

data remove storage mines_and_mobs:npc args
data modify storage mines_and_mobs:npc args set from storage mines_and_mobs:default vil

data modify storage mines_and_mobs:npc vil.pos insert 0 from entity @p Pos[0]
data modify storage mines_and_mobs:npc vil.pos insert 1 from entity @p Pos[1]
data modify storage mines_and_mobs:npc vil.pos insert 2 from entity @p Pos[2]

execute store result storage mines_and_mobs:npc vil.npc_id int 1 run scoreboard players get #npc_id_counter Math

data modify storage mines_and_mobs:npc args merge from storage mines_and_mobs:npc vil

function mines_and_mobs:npc/_generic/do_villager with storage mines_and_mobs:npc args
data remove storage mines_and_mobs:npc args
execute store result storage mines_and_mobs:global npc_id int 1 run scoreboard players add #npc_id_counter Math 1