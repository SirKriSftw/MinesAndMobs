advancement revoke @s only mines_and_mobs:enemies/mimic_right
data modify storage mines_and_mobs:temp attack set value []
data modify storage mines_and_mobs:temp interaction set from entity @s UUID
function mines_and_mobs:enemies/types/mimic/activate/find with storage mines_and_mobs:temp

say right