# 1. Move forward
tp @s ^ ^ ^0.1
particle end_rod ~ ~ ~ 0 0 0 0 1

# 2. Check for mobs
execute at @s as @e[type=!player,type=!marker,distance=..2,limit=1,tag=!hit] if predicate mines_and_mobs:is_hit run function mines_and_mobs:game/ray/detection/mob with storage mines_and_mobs:ray data

execute if data entity @s {data:{hit_mob:1b, p_mobs:0b}} run kill @s
execute if data entity @s {data:{hit_mob:1b, p_mobs:0b}} run return 0

data modify entity @s data.hit_mob set value 0b

# 3. Check for blocks
execute at @s align x run execute store result score #x RayCast run data get entity @s Pos[0] 1
execute at @s align y run execute store result score #y RayCast run data get entity @s Pos[1] 1
execute at @s align z run execute store result score #z RayCast run data get entity @s Pos[2] 1

execute unless block ~ ~ ~ air run function mines_and_mobs:game/ray/detection/block with storage mines_and_mobs:ray data
execute if data entity @s {data:{hit_block:1b, p_blocks:0}} run kill @s
execute if data entity @s {data:{hit_block:1b, p_blocks:0}} run return 0

# 4. Range Logic
execute store result score @s RayCast run data get entity @s data.range
scoreboard players remove @s RayCast 1
execute store result entity @s data.range int 1 run scoreboard players get @s RayCast

# 5. Continue if range > 0
execute if score @s RayCast matches 1.. as @s at @s run function mines_and_mobs:game/ray/step with storage mines_and_mobs:ray data
# 6. Cleanup
# If we reach the end of the function (range out or return 0), kill the marker
kill @s