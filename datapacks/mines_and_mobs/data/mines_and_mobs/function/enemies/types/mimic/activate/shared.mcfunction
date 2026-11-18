# Brings mimic to life and kills interaction entity
data merge entity @s {NoAI:false}
execute at @s run kill @e[type=interaction,limit=1,sort=nearest,tag=mimic, distance=..1]

data remove storage mines_and_mobs:temp interaction
data remove storage mines_and_mobs:temp attack