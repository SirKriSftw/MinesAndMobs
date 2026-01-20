execute if score #current_inv_slot Math >= #max_inv_slot Math run return 0

$execute if items entity @s container.$(current_inv_slot) gray_stained_glass_pane[custom_data={filler:1b}] \
  run item replace entity @s container.$(current_inv_slot) with air

scoreboard players add #current_inv_slot Math 1
execute store result storage mines_and_mobs:temp current_inv_slot int 1 run scoreboard players get #current_inv_slot Math

function mines_and_mobs:inventory/slots/clean_loop with storage mines_and_mobs:temp