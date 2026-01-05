data remove storage mines_and_mobs:give skill
data modify storage mines_and_mobs:give skill set from storage mines_and_mobs:default skill

data modify storage mines_and_mobs:give skill merge from storage mines_and_mobs:give skill_args
function mines_and_mobs:skills/_generic/apply_data with storage mines_and_mobs:give skill
data remove storage mines_and_mobs:give skill_args

function mines_and_mobs:skills/calc_cooldown