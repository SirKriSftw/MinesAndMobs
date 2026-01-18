data remove storage mines_and_mobs:class weapon
data modify storage mines_and_mobs:class weapon set from storage mines_and_mobs:default class

data modify storage mines_and_mobs:class weapon merge from storage mines_and_mobs:class wep_args

function mines_and_mobs:classes/_generic/do_weapon with storage mines_and_mobs:class weapon

# Clean up
data remove storage mines_and_mobs:class weapon
data remove storage mines_and_mobs:class wep_args