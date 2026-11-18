# Die if no vil
$execute unless entity @e[type=villager, tag=mnm_vil, sort=nearest, limit=1, nbt={UUID:$(owner)}] run kill @s

# TP to vil
$execute at @e[type=villager, tag=mnm_vil, sort=nearest, limit=1, nbt={UUID:$(owner)}] run tp @s ~ ~ ~ ~ ~

# Face the player when they get close enough
execute if entity @p[distance=..2] at @p[distance=..2] anchored feet run rotate @s facing ~ ~ ~