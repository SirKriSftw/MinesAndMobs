# Summon the ray worker
$summon marker ~ ~ ~ {Tags: ["$(tag)", "ray_worker", "ray_new"]}
execute as @e[tag=ray_new,limit=1,distance=..1] anchored eyes positioned ^ ^ ^ run tp @s ~ ~ ~ ~ ~

# Set entity data
$data modify entity @e[tag=ray_new,limit=1,distance=..1] data set value {range:$(range), speed:$(speed), p_mobs:$(p_mobs), p_blocks:$(p_blocks), bounce:$(bounce), chain:$(chain), on_travel:"$(on_travel)", on_hit_mob:"$(on_hit_mob)", on_hit_block:"$(on_hit_block)", on_end: "$(on_end)", hit_mob:0b, hit_block: 0b}

# Remove the new tag
tag @e[tag=ray_new,limit=1,distance=..1] remove ray_new

# Start Recursion for hit_scan
execute as @e[tag=hit_scan,limit=1,distance=..1] at @s run function mines_and_mobs:game/ray/step with entity @s data

# End hit_scan
execute as @e[tag=hit_scan,limit=1] at @s run function mines_and_mobs:game/ray/end with entity @s data