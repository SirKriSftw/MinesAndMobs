scoreboard players set #current_hotbar_slot Math 0

execute store result storage mines_and_mobs:temp current_hotbar_slot int 1 run scoreboard players get #current_hotbar_slot Math
function mines_and_mobs:inventory/hotbar/fill_loop with storage mines_and_mobs:temp

data remove storage mines_and_mobs:temp current_hotbar_slot
scoreboard players reset #current_hotbar_slot Math