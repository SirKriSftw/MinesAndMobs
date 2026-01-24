data modify storage mines_and_mobs:give spell_args merge value {name: "Boulder Throw", color:"#835d16"}
data modify storage mines_and_mobs:give spell_args merge value {range: 40f, speed: 3.0f, is_hitscan: 0b, weight: 50f}
data modify storage mines_and_mobs:give spell_args merge value {bounce:1b}
data modify storage mines_and_mobs:give spell_args merge value {on_travel:"mines_and_mobs:spells/boulder_throw/on/travel"}
data modify storage mines_and_mobs:give spell_args merge value {on_hit_mob:"mines_and_mobs:spells/boulder_throw/on/hit"}
data modify storage mines_and_mobs:give spell_args merge value {on_hit_block:"mines_and_mobs:spells/boulder_throw/on/hit"}
data modify storage mines_and_mobs:give spell_args merge value {on_end:"mines_and_mobs:none"}

execute as @s run function mines_and_mobs:spells/_give/spell