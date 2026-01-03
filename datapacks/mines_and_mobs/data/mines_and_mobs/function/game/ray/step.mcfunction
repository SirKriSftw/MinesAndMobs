# Move Forward-------------------------
tp @s ^ ^ ^0.1
$particle $(particle) ~ ~ ~ 0 0 0 0 1

# Mob Detection-------------------------
$execute at @s positioned ~ ~ ~ as @e[tag=enemy,distance=..2.5,tag=!hit, tag=enemy] positioned ~ ~0.5 ~ if predicate mines_and_mobs:is_hit run function mines_and_mobs:game/ray/detection/mob {on_hit_mob:"$(on_hit_mob)"}
execute if data entity @s {data:{hit_mob:1b, p_mobs:0}} run kill @s
execute if data entity @s {data:{hit_mob:1b, p_mobs:0}} run return 0

data modify entity @s data.hit_mob set value 0b

# Block Detection-----------------------
execute at @s align x run execute store result score #x RayCast run data get entity @s Pos[0] 1
execute at @s align y run execute store result score #y RayCast run data get entity @s Pos[1] 1
execute at @s align z run execute store result score #z RayCast run data get entity @s Pos[2] 1

$execute unless block ~ ~ ~ air run function mines_and_mobs:game/ray/detection/block {on_hit_block:"$(on_hit_block)"}
execute if data entity @s {data:{bounce:1}} unless block ~ ~ ~ air run function mines_and_mobs:game/ray/detection/bounce
execute if data entity @s {data:{hit_block:1b, p_blocks:0}} unless data entity @s {data:{bounce:1}} run kill @s
execute if data entity @s {data:{hit_block:1b, p_blocks:0}} unless data entity @s {data:{bounce:1}} run return 0

# Range Calculation-------------------
execute store result score @s RayCast run data get entity @s data.range
scoreboard players remove @s RayCast 1
execute store result entity @s data.range int 1 run scoreboard players get @s RayCast

# Recursion-------------------------
$execute if score @s RayCast matches 1.. as @s at @s run function mines_and_mobs:game/ray/step {particle:"$(particle)", on_hit_mob:"$(on_hit_mob)", on_hit_block:"$(on_hit_block)"}
# Cleanup---------------------------
execute if score @s RayCast matches 0..5 at @s run particle minecraft:smoke ~ ~ ~ 0.2 0.2 0.2 0.1 20
kill @s