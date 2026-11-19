# Kill baby slimes
execute unless entity @s[nbt={Size:2}] run tp @s ~ -1000 ~

execute if entity @s[nbt={HurtTime:0s}] run \
    data modify entity @e[type=item_display, tag=mimic, sort=nearest, limit=1] item.components.minecraft:custom_model_data.colors set value []

execute unless entity @s[nbt={HurtTime:0s}] run \
    data modify entity @e[type=item_display, tag=mimic, sort=nearest, limit=1] item.components.minecraft:custom_model_data.colors set value [16731469]

