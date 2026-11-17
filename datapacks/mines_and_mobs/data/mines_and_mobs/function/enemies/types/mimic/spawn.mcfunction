data modify entity @s Size set value 0
data merge entity @s {DeathLootTable:""}
execute at @s run function mines_and_mobs:enemies/types/mimic/summon
kill @s