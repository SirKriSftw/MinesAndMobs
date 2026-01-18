# Move Forward-------------------------
$tp @s ^ ^ ^$(speed)
$execute as @s at @s run function $(on_travel)

# Mob Detection-------------------------
$execute at @s positioned ~ ~ ~ as @e[tag=enemy,distance=..2.5,tag=!hit] positioned ~ ~0.5 ~ if predicate mines_and_mobs:is_hit run function mines_and_mobs:ray/detection/mob {ray_id: $(ray_id), on_hit_mob:"$(on_hit_mob)"}
execute if data entity @s {data:{hit_mob:1b, p_mobs:0}} unless data entity @s {data: {chain:1}} run data modify entity @s data.range set value 0f
execute if data entity @s {data:{hit_mob:1b, chain:1}} run function mines_and_mobs:ray/detection/chain with entity @s data

data modify entity @s data.hit_mob set value 0b

# Block Detection-----------------------
execute at @s align x run execute store result score #x RayCast run data get entity @s Pos[0] 1
execute at @s align y run execute store result score #y RayCast run data get entity @s Pos[1] 1
execute at @s align z run execute store result score #z RayCast run data get entity @s Pos[2] 1

$execute unless block ~ ~ ~ #mines_and_mobs:is_passable run function mines_and_mobs:ray/detection/block {on_hit_block:"$(on_hit_block)"}
execute if data entity @s {data:{bounce:1}} unless block ~ ~ ~ air run function mines_and_mobs:ray/detection/bounce
execute if data entity @s {data:{hit_block:1b, p_blocks:0}} unless data entity @s {data:{bounce:1}} run data modify entity @s data.range set value 0f

# Range Calculation-------------------
execute store result score @s RayCast run data get entity @s data.range
scoreboard players remove @s RayCast 1
execute store result entity @s data.range int 1 run scoreboard players get @s RayCast

# Early Return for Slow Cast---------
execute if entity @s[tag=slow_cast] run return 0

# Recursion-------------------------
execute if score @s RayCast matches 1.. as @s at @s run function mines_and_mobs:ray/_logic/step with entity @s data