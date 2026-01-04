data merge storage mines_and_mobs:default {use: {range:10.0f, speed:1.0f, is_hitscan:1b}}
data merge storage mines_and_mobs:default {use: {p_mobs:0b, p_blocks:0b, bounce:0b, chain:0b}} 
data merge storage mines_and_mobs:default {use: {on_travel: "mines_and_mobs:ray/on/travel"}}
data merge storage mines_and_mobs:default {use: {on_hit_mob: "mines_and_mobs:ray/on/mob"}}
data merge storage mines_and_mobs:default {use: {on_hit_block: "mines_and_mobs:ray/on/block"}}
data merge storage mines_and_mobs:default {use: {on_end: "mines_and_mobs:ray/on/end"}}