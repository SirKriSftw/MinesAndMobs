data remove storage mines_and_mobs:classes all[0]

$execute if entity @s[tag=$(current_class)] run function mines_and_mobs:classes/$(current_class)/stats
$execute if entity @s[tag=$(current_class)] run return 0

data modify storage mines_and_mobs:temp current_class set from storage mines_and_mobs:classes all[0]

execute if data storage mines_and_mobs:classes all run function mines_and_mobs:classes/_all/stats_loop with storage mines_and_mobs:temp