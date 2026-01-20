execute if score #current_hotbar_slot Math > #last_hotbar_slot Constants run return 0

$execute if items entity @s hotbar.$(current_hotbar_slot) gray_stained_glass_pane[custom_data={filler:1b}] \
  run item replace entity @s hotbar.$(current_hotbar_slot) with air

scoreboard players add #current_hotbar_slot Math 1
execute store result storage mines_and_mobs:temp current_hotbar_slot int 1 run scoreboard players get #current_hotbar_slot Math

function mines_and_mobs:inventory/hotbar/clean_loop with storage mines_and_mobs:temp