# Clean up storage
data remove storage mines_and_mobs:ray use

# Summon the ray worker
execute at @s rotated as @s anchored eyes run summon marker ~ ~ ~ {Tags: ["ray_worker"]}
execute as @e[tag=ray_worker,limit=1,distance=..1] rotated as @p run tp @s ~ ~ ~ ~ ~

# Initialize its data from the macro call
$data modify entity @e[tag=ray_worker,limit=1,distance=..1] data set value {range:$(range), p_mobs:$(p_mobs), p_blocks:$(p_blocks), bounce:$(bounce), particle:"$(particle)", hit_mob:0b, hit_block: 0b}

# Start the recursion as the marker
$execute as @e[tag=ray_worker,limit=1,distance=..1] at @s positioned ~ ~1.5 ~ run function mines_and_mobs:game/ray/step {particle:"$(particle)", on_hit_mob:"$(on_hit_mob)", on_hit_block:"$(on_hit_block)"}