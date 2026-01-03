# Move Forward-------------------------
tp @s ^ ^ ^0.1
particle end_rod ~ ~ ~ 0 0 0 0 1

# Mob Detection-------------------------
execute at @s positioned ~ ~ ~ as @e[tag=enemy,distance=..2.5,limit=1,tag=!hit, tag=enemy] positioned ~ ~0.5 ~ if predicate mines_and_mobs:is_hit run function mines_and_mobs:game/ray/detection/mob with storage mines_and_mobs:ray data

execute if data entity @s {data:{hit_mob:1b, p_mobs:0}} run kill @s
execute if data entity @s {data:{hit_mob:1b, p_mobs:0}} run return 0

data modify entity @s data.hit_mob set value 0b

# Block Detection-----------------------
execute at @s align x run execute store result score #x RayCast run data get entity @s Pos[0] 1
execute at @s align y run execute store result score #y RayCast run data get entity @s Pos[1] 1
execute at @s align z run execute store result score #z RayCast run data get entity @s Pos[2] 1

execute unless block ~ ~ ~ air run function mines_and_mobs:game/ray/detection/block with storage mines_and_mobs:ray data
execute if data entity @s {data:{hit_block:1b, p_blocks:0}} run kill @s
execute if data entity @s {data:{hit_block:1b, p_blocks:0}} run return 0

# Range Calculation-------------------
execute store result score @s RayCast run data get entity @s data.range
scoreboard players remove @s RayCast 1
execute store result entity @s data.range int 1 run scoreboard players get @s RayCast

# Recursion-------------------------
execute if score @s RayCast matches 1.. as @s at @s run function mines_and_mobs:game/ray/step with storage mines_and_mobs:ray data
# Cleanup---------------------------
kill @s