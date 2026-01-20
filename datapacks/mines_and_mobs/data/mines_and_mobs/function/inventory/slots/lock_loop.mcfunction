execute if score #current_inv_slot Math > #last_slot Constants run return 0

$execute unless items entity @s container.$(current_inv_slot) gray_stained_glass_pane[custom_data={filler:1b}] \
  run data modify storage mines_and_mobs:temp drop_item set from entity @s Inventory[{Slot:$(current_inv_slot)b}]

$execute if items entity @s container.$(current_inv_slot) * \
  run function mines_and_mobs:inventory/slots/drop_item with storage mines_and_mobs:temp

$item replace entity @s container.$(current_inv_slot) with gray_stained_glass_pane[custom_data={filler:1b}, \
  minecraft:custom_name={"text":"Locked", "italic":false, "color":"gray"}]

scoreboard players add #current_inv_slot Math 1
execute store result storage mines_and_mobs:temp current_inv_slot int 1 run scoreboard players get #current_inv_slot Math

function mines_and_mobs:inventory/slots/lock_loop with storage mines_and_mobs:temp