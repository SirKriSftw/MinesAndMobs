execute unless block ~ ~-1 ~ minecraft:chain_command_block{Command:""} run data modify storage mines_and_mobs:temp swap set value 1
execute if block ~ ~-1 ~ minecraft:chain_command_block{Command:""} run data remove storage mines_and_mobs:temp swap

execute if data storage mines_and_mobs:temp swap run clone ~ ~-1 ~ ~ ~-1 ~ ~1 ~-1 ~ replace move
execute if data storage mines_and_mobs:temp swap run setblock ~ ~-1 ~ minecraft:chain_command_block[facing=south]{auto:1b} replace

execute if data storage mines_and_mobs:temp swap run return 0

clone ~1 ~-1 ~ ~1 ~-1 ~ ~ ~-1 ~ replace move
setblock ~1 ~-1 ~ minecraft:chain_command_block[facing=south]{auto:1b} replace