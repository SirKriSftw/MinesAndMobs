# 1. Get current Yaw (Rotation[0]) scaled by 100 for decimals
execute store result score #currentYaw RayCast run data get entity @s Rotation[0] 100

# 2. Calculate: 18000 - currentYaw 
# (18000 is 180 degrees * 100)
scoreboard players set #zAngle RayCast 18000
scoreboard players operation #zAngle RayCast -= #currentYaw RayCast

# 3. Set the new Yaw back to the Marker
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get #zAngle RayCast