data modify storage mines_and_mobs:map_gen initialNodes set value [\
    "mines_and_mobs:forest/enter",\
    "mines_and_mobs:forest/exit"\
]

data modify storage mines_and_mobs:map_gen endFunc set value "mines_and_mobs:map/areas/forest/gen"

# Not setup yet but idea is:
# Max number of this type can spawn. Eventually instead of nodes being 1 block they will be structures and 
# call a 'type function' that will increment score and then roll from its pool
# IF score >= max then reroll this node
scoreboard players set Max_Treasure Map_Generation 1