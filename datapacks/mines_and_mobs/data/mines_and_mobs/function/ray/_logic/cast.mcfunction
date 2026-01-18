# Summon the ray worker
$summon marker ~ ~ ~ {Tags: ["$(tag)", "ray_worker", "ray_new"]}
execute as @e[tag=ray_new,limit=1,distance=..1] anchored eyes positioned ^ ^ ^0.1 run tp @s ~ ~-0.1 ~ ~ ~
$execute as @e[tag=ray_new,limit=1,distance=..1] run function $(on_cast_ray)
$function $(on_cast_player)

$execute as @e[tag=ray_new,limit=1,distance=..1] at @s run function mines_and_mobs:ray/_logic/setup {range:$(range), speed:$(speed), p_mobs:$(p_mobs), p_blocks:$(p_blocks), bounce:$(bounce), chain:$(chain), on_travel:"$(on_travel)", on_hit_mob:"$(on_hit_mob)", on_hit_block:"$(on_hit_block)", on_end:"$(on_end)"}
