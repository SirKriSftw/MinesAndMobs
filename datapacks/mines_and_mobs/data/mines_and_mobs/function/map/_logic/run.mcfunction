$execute at @s run function $(func)
tag @s remove map_processing
execute unless entity @e[type=armor_stand, tag=map_processing] run function mines_and_mobs:map/_logic/end_func with storage mines_and_mobs:map_gen