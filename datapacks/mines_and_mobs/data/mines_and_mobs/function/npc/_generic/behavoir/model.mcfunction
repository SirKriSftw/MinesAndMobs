# Die if no vil
$execute unless entity @e[type=villager, tag=mnm_vil, sort=nearest, limit=1, nbt={UUID:$(owner)}] run kill @s

# TP to vil
$tp @s @e[type=villager, sort=nearest, limit=1, nbt={UUID:$(owner)}]