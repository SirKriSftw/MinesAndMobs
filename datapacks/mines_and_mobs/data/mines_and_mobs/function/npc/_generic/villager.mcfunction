data remove storage mines_and_mobs:npc args
data modify storage mines_and_mobs:npc args set from storage mines_and_mobs:default vil

data modify storage mines_and_mobs:npc vil.pos insert 0 from entity @p Pos[0]
data modify storage mines_and_mobs:npc vil.pos insert 1 from entity @p Pos[1]
data modify storage mines_and_mobs:npc vil.pos insert 2 from entity @p Pos[2]

data modify storage mines_and_mobs:npc args merge from storage mines_and_mobs:npc vil

function mines_and_mobs:npc/_generic/do_villager with storage mines_and_mobs:npc args
data remove storage mines_and_mobs:npc args