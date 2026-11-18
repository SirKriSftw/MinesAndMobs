# Only 1 is true at a time, the player EITHER attacked or interacted with mimic
$execute as @e[type=interaction, tag=mimic, limit=1, sort=nearest,nbt={attack:{player:$(attack)}}] \
    at @s as @e[type=slime, tag=mimic, limit=1, distance=..1] at @s run function mines_and_mobs:enemies/types/mimic/activate/left

$execute as @e[type=interaction, tag=mimic, limit=1, sort=nearest,nbt={interaction:{player:$(interaction)}}] \
    at @s as @e[type=slime, tag=mimic, limit=1, distance=..1] at @s run function mines_and_mobs:enemies/types/mimic/activate/right