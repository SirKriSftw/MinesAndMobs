execute if entity @e[type=armor_stand, tag=map_processing] run tellraw @s ["",{"text":"Process already ongoing, cancelling request", color:"red"}]
execute if entity @e[type=armor_stand, tag=map_processing] run return fail

$execute as @e[type=armor_stand, tag=map_node, tag=!map_node_set] run data merge entity @s {data: {func: "$(func)"}}
execute as @e[type=armor_stand, tag=map_node, tag=!map_node_set] run tag @s add map_processing
