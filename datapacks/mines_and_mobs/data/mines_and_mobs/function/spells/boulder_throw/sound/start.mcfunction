data modify storage mines_and_mobs:temp sounds set value [\
  "break",\
  "fall",\
  "hit",\
  "place",\
  "step"\
]
execute store result storage mines_and_mobs:temp sound_index int 1 run random value 0..4
function mines_and_mobs:spells/boulder_throw/sound/pick with storage mines_and_mobs:temp


data remove storage mines_and_mobs:temp sounds
data remove storage mines_and_mobs:temp sound_index
data remove storage mines_and_mobs:temp selected_sound