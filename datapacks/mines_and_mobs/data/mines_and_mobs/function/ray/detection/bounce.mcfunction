# 1. Back out of the block so we aren't stuck inside it
tp @s ^ ^ ^-0.15

# 2. Find the Axis
scoreboard players set #axis RayCast 0

# Check X-axis (Sides of blocks)
execute if block ~0.1 ~ ~ air run scoreboard players set #axis RayCast 1
execute if block ~-0.1 ~ ~ air run scoreboard players set #axis RayCast 1

# Check Y-axis (Top/Bottom of blocks)
execute if block ~ ~0.1 ~ air run scoreboard players set #axis RayCast 2
execute if block ~ ~-0.1 ~ air run scoreboard players set #axis RayCast 2

# Check Z-axis (Sides of blocks)
execute if block ~ ~ ~0.1 air run scoreboard players set #axis RayCast 3
execute if block ~ ~ ~-0.1 air run scoreboard players set #axis RayCast 3

# 3. Apply the Bounce
# If hitting X or Z (Sides): Mirror the Yaw
# Logic: NewYaw = OldYaw * -1.0
execute if score #axis RayCast matches 1 run execute store result entity @s Rotation[0] float -1 run data get entity @s Rotation[0]
execute if score #axis RayCast matches 3 run execute store result entity @s Rotation[0] float -1 run function mines_and_mobs:ray/helper/z_bounce

# If hitting Y (Floor/Ceiling): Mirror the Pitch
# Logic: NewPitch = OldPitch * -1.0
execute if score #axis RayCast matches 2 run execute store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]
