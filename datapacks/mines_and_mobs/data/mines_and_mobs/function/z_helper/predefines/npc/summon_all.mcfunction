data modify storage mines_and_mobs:npc list set value [\
  "banker",\
  "bar_keep",\
  "blacksmith",\
  "doctor",\
  "merchant",\
  "scholar",\
  "witch"\
]

execute store result score _npc_len Math run data get storage mines_and_mobs:npc list

execute at @s if score _npc_len Math matches 1.. run function mines_and_mobs:z_helper/_loop/npc/read

data remove storage mines_and_mobs:npc list
data remove storage mines_and_mobs:temp current_npc 
scoreboard players reset _npc_len Math