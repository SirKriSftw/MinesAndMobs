execute unless score #x RayCast = @s last_x run tag @s add new_block
execute unless score #y RayCast = @s last_y run tag @s add new_block
execute unless score #z RayCast = @s last_z run tag @s add new_block

execute if entity @s[tag=new_block] run data modify entity @s data.hit_block set value 1b

$execute if entity @s[tag=new_block] run function $(on_hit_block)

execute if entity @s[tag=new_block] store result score @s last_x run scoreboard players get #x RayCast
execute if entity @s[tag=new_block] store result score @s last_y run scoreboard players get #y RayCast
execute if entity @s[tag=new_block] store result score @s last_z run scoreboard players get #z RayCast

tag @s remove new_block