scoreboard players enable @s give_stat

function mines_and_mobs:stats/_trigger/give_stat

# Clean up
scoreboard players set @s[scores={give_stat=1..}] give_stat 0