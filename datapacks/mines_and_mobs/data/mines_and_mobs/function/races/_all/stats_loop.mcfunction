data remove storage mines_and_mobs:races all[0]

$execute if entity @s[tag=$(current_race)] run function mines_and_mobs:races/$(current_race)/stats
$execute if entity @s[tag=$(current_race)] run return 0

data modify storage mines_and_mobs:temp current_race set from storage mines_and_mobs:races all[0]

execute if data storage mines_and_mobs:races all run function mines_and_mobs:races/_all/stats_loop with storage mines_and_mobs:temp