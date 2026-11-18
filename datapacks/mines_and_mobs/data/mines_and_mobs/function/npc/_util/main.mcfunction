execute at @a as @e[type=villager, tag=!mnm_vil,limit=1,distance=..5] if data entity @s CustomName at @s \
    run function mines_and_mobs:npc/_util/summon with entity @s