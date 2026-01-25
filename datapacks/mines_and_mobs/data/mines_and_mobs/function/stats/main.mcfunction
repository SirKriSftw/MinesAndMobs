execute as @a[tag=level_up] run function mines_and_mobs:stats/_trigger/main

execute as @a[predicate=mines_and_mobs:hold_skill] run function mines_and_mobs:stats/_logic/upgrade/int_skill
execute as @a[predicate=mines_and_mobs:hold_weapon] run function mines_and_mobs:stats/_logic/upgrade/str_wep
execute as @a[predicate=mines_and_mobs:hold_weapon] run function mines_and_mobs:stats/_logic/upgrade/dex_wep

execute as @a[tag=reloading] run function mines_and_mobs:stats/_reload/tick