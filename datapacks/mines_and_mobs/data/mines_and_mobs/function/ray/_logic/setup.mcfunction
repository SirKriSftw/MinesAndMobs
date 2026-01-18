# Assign an ID
execute store result entity @s data.ray_id int 1 run data get storage mines_and_mobs:global ray_id

execute store result storage mines_and_mobs:global ray_id int 1 run scoreboard players add #ray_id_counter RayCast 1

# Set entity data
$data modify entity @s data merge value {\
  age:0,\
  range:$(range),\
  speed:$(speed),\
  weight:$(weight),\
  damage:$(damage),\
  p_mobs:$(p_mobs),\
  p_blocks:$(p_blocks),\
  bounce:$(bounce),\
  chain:$(chain),\
  lock_on:$(lock_on),\
  on_travel:"$(on_travel)",\
  on_hit_mob:"$(on_hit_mob)",\
  on_hit_block:"$(on_hit_block)",\
  on_end: "$(on_end)",\
  hit_mob:0b,\
  hit_block: 0b\
}

# Remove the new tag
tag @s remove ray_new

# Start Recursion for hit_scan
execute as @s[tag=hit_scan] at @s run function mines_and_mobs:ray/_logic/step with entity @s data

# End hit_scan
execute as @s[tag=hit_scan] at @s run function mines_and_mobs:ray/_logic/end with entity @s data