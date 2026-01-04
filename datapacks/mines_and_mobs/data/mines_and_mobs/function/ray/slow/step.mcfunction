function mines_and_mobs:ray/_logic/step with entity @s data
execute store result score @s RayCast run data get entity @s data.range
execute if score @s RayCast matches ..0 at @s run function mines_and_mobs:ray/_logic/end with entity @s data