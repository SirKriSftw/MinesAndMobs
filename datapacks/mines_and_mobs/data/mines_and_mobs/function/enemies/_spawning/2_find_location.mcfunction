# Pick a random player then pick a random nearby map node
execute at @r[gamemode=adventure] positioned ~ -54 ~ as @e[type=minecraft:armor_stand, tag=map_node, tag=!edge, limit=1, sort=random, distance=..32] at @s \
    run function mines_and_mobs:enemies/_spawning/3_roll_pool with storage mines_and_mobs:game_master.enemies