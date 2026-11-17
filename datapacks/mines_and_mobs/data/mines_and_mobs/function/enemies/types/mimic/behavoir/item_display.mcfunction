# Kill item display if slime dies
execute at @s unless entity @e[type=slime, tag=mimic, distance=..1] run kill @s

# TP to slime (w/ its rotation)
execute at @s at @e[type=slime, tag=mimic, distance=..1, sort=nearest, limit=1] run tp @s ~ ~0.5 ~ ~180 ~