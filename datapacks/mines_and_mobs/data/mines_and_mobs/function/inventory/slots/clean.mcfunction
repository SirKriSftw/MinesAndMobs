scoreboard players operation #current_inv_slot Math = #first_slot Constants
scoreboard players operation #max_inv_slot Math = #first_slot Constants
scoreboard players operation #max_inv_slot Math += @s inv_size

execute store result storage mines_and_mobs:temp current_inv_slot int 1 run scoreboard players get #current_inv_slot Math

function mines_and_mobs:inventory/hotbar/clean with storage mines_and_mobs:temp
function mines_and_mobs:inventory/slots/clean_loop with storage mines_and_mobs:temp
function mines_and_mobs:inventory/slots/lock_loop with storage mines_and_mobs:temp

data remove storage mines_and_mobs:temp current_inv_slot
scoreboard players reset #current_inv_slot Math
#advancement revoke @s from mines_and_mobs:clean_inv