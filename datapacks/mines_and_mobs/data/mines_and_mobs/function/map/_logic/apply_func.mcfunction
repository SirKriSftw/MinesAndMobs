execute if entity @e[tag=map_processing] run tellraw @s ["",{"text":"Process already ongoing, cancelling request", color:"red"}]
execute if entity @e[tag=map_processing] run return fail

$execute as @e[tag=map_node] run data merge entity @s {data: {func: "$(func)"}}
execute as @e[tag=map_node] run tag @s add map_processing