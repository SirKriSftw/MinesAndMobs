data modify storage mines_and_mobs:game_master.enemies function set from entity @s Item.components.minecraft:custom_data.mines_and_mobs:spawn_function
function mines_and_mobs:enemies/_spawning/5_do_spawn with storage mines_and_mobs:game_master.enemies

kill @s
data remove storage mines_and_mobs:game_master.enemies function