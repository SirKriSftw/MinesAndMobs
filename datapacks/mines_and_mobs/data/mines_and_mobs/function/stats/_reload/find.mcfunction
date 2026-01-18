$execute if items entity @s hotbar.$(current_item) #mines_and_mobs:bow run function mines_and_mobs:stats/_reload/repair with storage mines_and_mobs:temp
$execute if items entity @s hotbar.$(current_item) #mines_and_mobs:bow run return 0
scoreboard players add #current_item Math 1
execute if score #current_item Math matches 9.. run return 0

execute store result storage mines_and_mobs:temp current_item int 1 run scoreboard players get #current_item Math
function mines_and_mobs:stats/_reload/find with storage mines_and_mobs:temp