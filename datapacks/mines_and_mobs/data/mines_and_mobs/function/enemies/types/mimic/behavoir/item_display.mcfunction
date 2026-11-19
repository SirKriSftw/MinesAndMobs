# Kill item display if slime dies
$execute at @s unless entity @e[type=slime, tag=mimic, sort=nearest, limit=1, nbt={UUID:$(owner)}] run function mines_and_mobs:enemies/types/mimic/behavoir/death/0_trigger

# TP to slime (w/ its rotation)
$execute at @s at @e[type=slime, tag=mimic, sort=nearest, limit=1, nbt={UUID:$(owner)}] run tp @s ~ ~0.5 ~ ~180 ~