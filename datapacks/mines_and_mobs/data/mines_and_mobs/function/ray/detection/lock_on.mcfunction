# Store CURRENT rotation values
execute store result score #ray_rot_0 Math run data get entity @s Rotation[0] 1000
execute store result score #ray_rot_1 Math run data get entity @s Rotation[1] 1000

# Store TARGET rotation values
execute at @s run summon marker ~ ~ ~ {Tags:["ray_target"]}
$execute as @e[tag=ray_target,limit=1, sort=nearest] at @s \
  facing entity @e[tag=enemy, distance=..25, nbt=!{data:{hit_by:[$(ray_id)]}}, limit=1, sort=nearest] eyes \
  run tp @s ~ ~ ~ ~ ~

execute store result score #target_rot_0 Math run data get entity @e[tag=ray_target,limit=1, sort=nearest] Rotation[0] 1000
execute store result score #target_rot_1 Math run data get entity @e[tag=ray_target,limit=1, sort=nearest] Rotation[1] 1000
kill @e[tag=ray_target,limit=1, sort=nearest]

# Calculate distance in rotations
scoreboard players operation #delta_rot_0 Math = #target_rot_0 Math
scoreboard players operation #delta_rot_0 Math -= #ray_rot_0 Math
scoreboard players operation #delta_rot_1 Math = #target_rot_1 Math
scoreboard players operation #delta_rot_1 Math -= #ray_rot_1 Math

# Handle flips
execute if score #delta_rot_0 Math matches 180001.. run scoreboard players remove #delta_rot_0 Math 360000
execute if score #delta_rot_1 Math matches 180001.. run scoreboard players remove #delta_rot_1 Math 360000

execute if score #delta_rot_0 Math matches ..-180001 run scoreboard players add #delta_rot_0 Math 360000
execute if score #delta_rot_1 Math matches ..-180001 run scoreboard players add #delta_rot_1 Math 360000

# CLAMP delta by max rotations
$scoreboard players set #max_rot RayCast $(turn_radius)
$scoreboard players set #max_rot_neg RayCast -$(turn_radius)

execute if score #delta_rot_0 Math > #max_rot RayCast run scoreboard players operation #delta_rot_0 Math = #max_rot RayCast
execute if score #delta_rot_0 Math < #max_rot_neg RayCast run scoreboard players operation #delta_rot_0 Math = #max_rot_neg RayCast

execute if score #delta_rot_1 Math > #max_rot RayCast run scoreboard players operation #delta_rot_1 Math = #max_rot RayCast
execute if score #delta_rot_1 Math < #max_rot_neg RayCast run scoreboard players operation #delta_rot_1 Math = #max_rot_neg RayCast

# Add 'Smoothed' delta
scoreboard players operation #ray_rot_0 Math += #delta_rot_0 Math
scoreboard players operation #ray_rot_1 Math += #delta_rot_1 Math

# Rotate Ray
execute store result entity @s Rotation[0] float 0.001 run scoreboard players get #ray_rot_0 Math
execute store result entity @s Rotation[1] float 0.001 run scoreboard players get #ray_rot_1 Math