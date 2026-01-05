data modify storage mines_and_mobs:give spell_args merge value {name: "Smite", color:"#0088C1"}
data modify storage mines_and_mobs:give spell_args merge value {range: 20f, speed: 5.0f, is_hitscan: 0b}
data modify storage mines_and_mobs:give spell_args merge value {on_travel:"mines_and_mobs:spells/smite/on/travel"}
data modify storage mines_and_mobs:give spell_args merge value {on_hit_mob:"mines_and_mobs:spells/smite/on/hit"}
data modify storage mines_and_mobs:give spell_args merge value {on_hit_block:"mines_and_mobs:spells/smite/on/hit"}
data modify storage mines_and_mobs:give spell_args merge value {on_end:"mines_and_mobs:spells/smite/on/hit"}

execute as @s run function mines_and_mobs:spells/_give/spell