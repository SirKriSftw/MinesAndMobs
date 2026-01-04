scoreboard players enable @s give_stat

# Get score to set as Macro Param
execute store result storage mines_and_mobs:stats give_stat int 1 run scoreboard players get @s give_stat

function mines_and_mobs:stats/_trigger/give_stat with storage mines_and_mobs:stats

# Clean up
scoreboard players set @s[scores={give_stat=1..}] give_stat 0
data remove storage mines_and_mobs:stats give_stat