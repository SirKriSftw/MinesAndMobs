data merge storage mines_and_mobs:default {spell: {name: "Generic Spell"}}
data merge storage mines_and_mobs:default {spell: {color: "#CC44CC"}}
data merge storage mines_and_mobs:default {spell: {item: "breeze_rod"}}
data merge storage mines_and_mobs:default {spell: {range:10.0f, speed:2.0f, weight:0.0f, is_hitscan:1b}}
data merge storage mines_and_mobs:default {spell: {p_mobs:0b, p_blocks:0b, bounce:0b, chain:0b, lock_on:0b}} 
data merge storage mines_and_mobs:default {spell: {turn_radius:10i, lock_delay:20, lock_dist:25.0f}} 
data merge storage mines_and_mobs:default {spell: {on_cast_player: "mines_and_mobs:none"}}
data merge storage mines_and_mobs:default {spell: {on_cast_ray: "mines_and_mobs:none"}}
data merge storage mines_and_mobs:default {spell: {on_travel: "mines_and_mobs:ray/on/travel"}}
data merge storage mines_and_mobs:default {spell: {on_hit_mob: "mines_and_mobs:ray/on/mob"}}
data merge storage mines_and_mobs:default {spell: {on_hit_block: "mines_and_mobs:ray/on/block"}}
data merge storage mines_and_mobs:default {spell: {on_end: "mines_and_mobs:ray/on/end"}}