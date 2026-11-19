# Brings mimic to life and kills interaction entity
playsound minecraft:block.chest.open hostile @a ~ ~ ~ 1 1
data merge entity @s {NoAI:false}
execute at @s run kill @e[type=interaction,limit=1,sort=nearest,tag=mimic, distance=..1]

execute at @s as @e[type=item_display, tag=mimic, sort=nearest, limit=1, distance=..1] run \
    data modify entity @s item.components.minecraft:item_model set value "mines_and_mobs:mimic"

data remove storage mines_and_mobs:temp interaction
data remove storage mines_and_mobs:temp attack