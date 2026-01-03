execute as @a if items entity @s container.* blaze_powder if items entity @s weapon.mainhand *[custom_data~{mines_and_mobs_weapon:1b}] run function mines_and_mobs:stats/str/upgrade
execute as @a if items entity @s container.* rabbit_foot if items entity @s weapon.mainhand *[custom_data~{mines_and_mobs_weapon:1b}] run function mines_and_mobs:stats/dex/upgrade

execute as @a if items entity @s container.* golden_apple run function mines_and_mobs:stats/wis/upgrade
execute as @a if items entity @s container.* iron_ingot run function mines_and_mobs:stats/cons/upgrade

execute as @a if items entity @s container.* book run function mines_and_mobs:stats/int/upgrade
execute as @a if items entity @s container.* emerald run function mines_and_mobs:stats/cha/upgrade