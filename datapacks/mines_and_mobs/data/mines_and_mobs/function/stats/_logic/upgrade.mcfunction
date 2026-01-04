execute if items entity @s container.* blaze_powder \
 run function mines_and_mobs:stats/str/upgrade

execute if items entity @s container.* rabbit_foot \
 run function mines_and_mobs:stats/dex/upgrade

execute if items entity @s container.* iron_ingot \
 run function mines_and_mobs:stats/cons/upgrade

execute if items entity @s container.* book \
 run function mines_and_mobs:stats/int/upgrade

execute if items entity @s container.* golden_apple \
 run function mines_and_mobs:stats/wis/upgrade

execute if items entity @s container.* emerald \
 run function mines_and_mobs:stats/cha/upgrade

advancement revoke @s from mines_and_mobs:stats/get_item