# Die if no model
$execute unless entity @e[type=mannequin, tag=mnm_man, sort=nearest, limit=1, nbt={UUID:$(owner)}] run kill @s