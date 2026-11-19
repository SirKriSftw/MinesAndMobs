execute unless entity @s[tag=dying] run playsound minecraft:block.chest.close hostile @a ~ ~ ~ 1 0
tag @s add dying
data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{left_rotation:[0.0f,0.0f,0.7071068f,0.7071068f],translation:[0.4f,0.4f,0.0f]}}
data modify entity @s item.components.minecraft:custom_model_data.colors set value [16731469]
schedule function mines_and_mobs:enemies/types/mimic/behavoir/death/1_delay 10t append