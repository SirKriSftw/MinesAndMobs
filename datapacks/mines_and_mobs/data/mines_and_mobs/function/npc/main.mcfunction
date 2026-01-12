execute as @e[type=mannequin, tag=mnm_man] at @s unless entity @e[type=villager, tag=mnm_vil, distance=..1] run kill @s
execute as @e[type=villager, tag=mnm_vil] at @s unless entity @e[type=mannequin, tag=mnm_man, distance=..1] run kill @s

execute as @e[type=mannequin, tag=mnm_man] at @s run tp @s @e[type=villager, tag=mnm_vil, distance=..2, limit=1, sort=nearest]
