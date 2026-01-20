function mines_and_mobs:stats/main
function mines_and_mobs:skills/main
function mines_and_mobs:game/main
function mines_and_mobs:inventory/main
function mines_and_mobs:npc/main
function mines_and_mobs:map/main
function mines_and_mobs:ray/main

execute store result score #ItemCt Math run execute if entity @e[type=item]
execute if score #ItemCt Math matches 10.. run kill @e[type=item]