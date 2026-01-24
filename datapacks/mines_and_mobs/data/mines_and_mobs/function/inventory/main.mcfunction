execute as @e[type=item, nbt={Age:0s}, tag=!processed] at @s if data entity @s Item.components."minecraft:custom_data".cant_drop \
  run function mines_and_mobs:inventory/force_pickup

execute as @e[type=item, nbt={Age:5s}, tag=processed] run kill @s