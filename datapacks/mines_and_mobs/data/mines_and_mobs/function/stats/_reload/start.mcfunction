tag @s add reloading
execute as @e[type=arrow] run data modify entity @s pickup set value 0b
execute store result entity @e[type=arrow, distance=..3, limit=1, sort=nearest] damage double 0.5 run scoreboard players get @s str
item modify entity @s weapon.mainhand {function:"minecraft:set_damage", damage:0}
advancement revoke @s from mines_and_mobs:shot_arrow