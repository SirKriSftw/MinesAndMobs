advancement revoke @s from mines_and_mobs:stats/get_item
execute if score _stopUpgrade GameOptions matches 1 run return 0

execute if items entity @s container.* blaze_powder[custom_data~{mines_and_mobs_upgrade:true}] \
 run function mines_and_mobs:stats/str/upgrade

execute if items entity @s container.* rabbit_foot[custom_data~{mines_and_mobs_upgrade:true}] \
 run function mines_and_mobs:stats/dex/upgrade

execute if items entity @s container.* iron_ingot[custom_data~{mines_and_mobs_upgrade:true}] \
 run function mines_and_mobs:stats/cons/upgrade

execute if items entity @s container.* book[custom_data~{mines_and_mobs_upgrade:true}] \
 run function mines_and_mobs:stats/int/upgrade

execute if items entity @s container.* golden_apple[custom_data~{mines_and_mobs_upgrade:true}] \
 run function mines_and_mobs:stats/wis/upgrade

execute if items entity @s container.* emerald[custom_data~{mines_and_mobs_upgrade:true}] \
 run function mines_and_mobs:stats/cha/upgrade