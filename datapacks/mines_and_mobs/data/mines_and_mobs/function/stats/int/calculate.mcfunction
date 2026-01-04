# Get scaled INT value
$scoreboard players set _upgrade_stat Math $(int_lvl)

# (100 - scaled_value) = % cooldown
scoreboard players operation #100 Constants -= _upgrade_stat Math
execute store result score @s cooldownPercentage run scoreboard players get #100 Constants
scoreboard players set #100 Constants 100

# Cleanup
scoreboard players reset _upgrade_stat Math