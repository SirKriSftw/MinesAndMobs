tp @s ~ ~ ~ ~3 ~

execute if entity @s[tag=Up] run tp ~ ~0.1 ~
execute if entity @s[tag=Down] run tp ~ ~-0.1 ~

execute as @s[tag=Down] anchored feet unless block ~ ~-0.2 ~ air run tag @s add Up
execute as @s[tag=Down] anchored feet unless block ~ ~-0.2 ~ air run tag @s remove Down
execute as @s[tag=Up] anchored eyes positioned ^ ^ ^ unless block ~ ~0.2 ~ air run tag @s add Down
execute as @s[tag=Up] anchored eyes positioned ^ ^ ^ unless block ~ ~0.2 ~ air run tag @s remove Up