data modify storage mines_and_mobs:temp current_npc set from storage mines_and_mobs:npc list[0]

function mines_and_mobs:z_helper/_loop/npc/summon with storage mines_and_mobs:temp

data remove storage mines_and_mobs:npc list[0]

execute store result score _npc_len Math run data get storage mines_and_mobs:npc list
execute if score _npc_len Math matches 1.. positioned ^ ^ ^1 run function mines_and_mobs:z_helper/_loop/npc/read