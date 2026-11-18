# Die if no model
$execute unless entity @e[type=mannequin, tag=mnm_man, sort=nearest, limit=1, nbt={UUID:$(owner)}] run kill @s

# If player is close enough do not move
execute if entity @p[distance=..2] run effect give @s slowness 1 255 true