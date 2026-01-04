data merge storage mines_and_mobs:default {use: {range:10.0f, speed:0.0f}}
data merge storage mines_and_mobs:default {use: {p_mobs:0b, p_blocks:0b, bounce:0b, chain:0b}} 
data merge storage mines_and_mobs:default {use: {particle: "minecraft:end_rod", particle_data: "0 0 0 0 0 force"}}
data merge storage mines_and_mobs:default {use: {end_particle: "minecraft:smoke", end_particle_data: "0 0 0 0 0 force"}}
data merge storage mines_and_mobs:default {use: {on_hit_mob: "mines_and_mobs:game/ray/test/hit_mob", on_hit_block: "mines_and_mobs:game/ray/test/hit_block"}}