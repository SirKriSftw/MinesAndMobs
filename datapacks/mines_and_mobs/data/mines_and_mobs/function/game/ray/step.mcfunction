# Move Forward-------------------------
tp @s ^ ^ ^0.1
$particle $(particle) ~ ~ ~ $(particle_data)

# Mob Detection-------------------------
$execute at @s positioned ~ ~ ~ as @e[tag=enemy,distance=..2.5,tag=!hit] positioned ~ ~0.5 ~ if predicate mines_and_mobs:is_hit run function mines_and_mobs:game/ray/detection/mob {on_hit_mob:"$(on_hit_mob)"}
execute if data entity @s {data:{hit_mob:1b, p_mobs:0b}} unless data entity @s {data: {chain:1}} run kill @s
execute if data entity @s {data:{hit_mob:1b, p_mobs:0b}} unless data entity @s {data: {chain:1}} run return 0
execute if data entity @s {data:{hit_mob:1b, chain:1}} run function mines_and_mobs:game/ray/detection/chain

data modify entity @s data.hit_mob set value 0b

# Block Detection-----------------------
execute at @s align x run execute store result score #x RayCast run data get entity @s Pos[0] 1
execute at @s align y run execute store result score #y RayCast run data get entity @s Pos[1] 1
execute at @s align z run execute store result score #z RayCast run data get entity @s Pos[2] 1

$execute unless block ~ ~ ~ air run function mines_and_mobs:game/ray/detection/block {on_hit_block:"$(on_hit_block)"}
execute if data entity @s {data:{bounce:1}} unless block ~ ~ ~ air run function mines_and_mobs:game/ray/detection/bounce
$execute if data entity @s {data:{hit_block:1b, p_blocks:0}} unless data entity @s {data:{bounce:1}} run function mines_and_mobs:game/ray/end {end_particle:"$(end_particle)", end_particle_data:"$(end_particle_data)"}
execute if data entity @s {data:{hit_block:1b, p_blocks:0}} unless data entity @s {data:{bounce:1}} run return 0

# Range Calculation-------------------
execute store result score @s RayCast run data get entity @s data.range
scoreboard players remove @s RayCast 1
execute store result entity @s data.range int 1 run scoreboard players get @s RayCast

# Recursion-------------------------
$execute if score @s RayCast matches 1.. as @s at @s run function mines_and_mobs:game/ray/step {particle:"$(particle)", particle_data:"$(particle_data)", end_particle:"$(end_particle)", end_particle_data:"$(end_particle_data)", on_hit_mob:"$(on_hit_mob)", on_hit_block:"$(on_hit_block)"}
# Cleanup---------------------------
$execute if score @s RayCast matches 0..5 at @s as @s run function mines_and_mobs:game/ray/end {end_particle:"$(end_particle)", end_particle_data:"$(end_particle_data)"}